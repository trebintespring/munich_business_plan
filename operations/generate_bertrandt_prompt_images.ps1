[CmdletBinding()]
param(
    [string]$ApiReferencePath = (Join-Path $PSScriptRoot '..\..\apis\apis.md'),
    [string]$DeckAssetsPath = (Join-Path $PSScriptRoot '..\deliverables\bertrandt_partner_deck\assets'),
    [string]$SlidevAssetsPath = (Join-Path $PSScriptRoot '..\deliverables\bertrandt_partner_slidev\public\assets')
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Get-OpenAIApiKey {
    param([string]$Path)

    if (-not (Test-Path -LiteralPath $Path)) {
        throw "API reference file was not found: $Path"
    }

    $apiReference = Get-Content -Raw -LiteralPath $Path
    if ($apiReference -notmatch 'API key:\s*(\S+)') {
        throw 'OpenAI API key was not found in the API reference file.'
    }

    return $Matches[1]
}

$prompts = @(
    [pscustomobject]@{
        Title = 'EU Manufacturing And Sourcing Network'
        FileName = 'eu-manufacturing-sourcing-network.png'
        Prompt = 'Clean industrial photography style showing a compact European electronics and mechatronics manufacturing environment: engineer reviewing a populated PCB panel, precision mechanical parts on a bench, assembly documentation on a tablet, neutral EU factory setting, no visible logos, graphite and teal color accents, natural workshop light, professional and realistic, 16:9 composition with clear space on the left for presentation text.'
    },
    [pscustomobject]@{
        Title = 'Prototype To Series Flow'
        FileName = 'prototype-to-series-flow.png'
        Prompt = 'Technical editorial image showing four stages on one workbench: early breadboard/control prototype, refined PCB assembly, test fixture with measurement leads, small-series packaged subsystem. Medical/industrial hardware feel, tidy engineering bench, muted off-white background, teal labels or subtle markers, realistic shallow depth of field, no brand names, no people facing camera, 16:9.'
    },
    [pscustomobject]@{
        Title = 'Quality Control And Assembly'
        FileName = 'quality-control-and-assembly.png'
        Prompt = 'Realistic close-up of a quality-control station for mechatronic hardware: gloved hands inspecting a compact actuator or control electronics assembly, calipers, test report, torque tool, ESD mat, organized parts trays, warm neutral light, graphite and teal visual accents, no logos, no dramatic stock-photo poses, high detail, 16:9.'
    },
    [pscustomobject]@{
        Title = 'Integrated Control Systems Workflow'
        FileName = 'integrated-control-systems-workflow.png'
        Prompt = 'Photorealistic engineering scene combining mechanical CAD on screen, oscilloscope traces, microcontroller PCB, small BLDC motor, sensor module, and handwritten interface notes. The image should communicate sensing, control, and actuation in one coherent workflow, clean industrial desk, restrained teal and amber accents, no visible proprietary data, 16:9.'
    },
    [pscustomobject]@{
        Title = 'Three-Person Specialist Engineering Cell'
        FileName = 'three-person-specialist-engineering-cell.png'
        Prompt = 'Professional team-workshop image showing three engineers collaborating around a compact medical/robotics prototype, one focused on mechanical assembly, one on electronics/test, one on documentation or system diagram. Diverse but realistic European engineering context, no posed smiles, no logos, consistent off-white, graphite, teal palette, presentation-grade, 16:9 with text-safe negative space.'
    }
)

$apiKey = Get-OpenAIApiKey -Path $ApiReferencePath
$deckAssets = (New-Item -ItemType Directory -Force -Path $DeckAssetsPath).FullName
$slidevAssets = (New-Item -ItemType Directory -Force -Path $SlidevAssetsPath).FullName

$jobs = foreach ($item in $prompts) {
    Start-ThreadJob -Name $item.FileName -ThrottleLimit 5 -ArgumentList $item, $apiKey, $deckAssets -ScriptBlock {
        param($PromptItem, $OpenAIApiKey, $OutputPath)

        $ErrorActionPreference = 'Stop'
        $body = @{
            model = 'gpt-image-1'
            prompt = $PromptItem.Prompt
            size = '1536x1024'
            quality = 'medium'
            n = 1
        } | ConvertTo-Json -Depth 5

        $headers = @{
            Authorization = "Bearer $OpenAIApiKey"
            'Content-Type' = 'application/json'
        }

        $response = Invoke-RestMethod -Method Post -Uri 'https://api.openai.com/v1/images/generations' -Headers $headers -Body $body -TimeoutSec 600
        if (-not $response.data -or -not $response.data[0].b64_json) {
            throw "No image data returned for $($PromptItem.Title)."
        }

        $bytes = [Convert]::FromBase64String($response.data[0].b64_json)
        $imagePath = Join-Path $OutputPath $PromptItem.FileName
        [System.IO.File]::WriteAllBytes($imagePath, $bytes)

        [pscustomobject]@{
            Title = $PromptItem.Title
            File = $imagePath
            Bytes = $bytes.Length
        }
    }
}

Write-Host "Started $($jobs.Count) OpenAI image generation jobs in parallel."
$results = $jobs | Wait-Job | Receive-Job
$jobs | Remove-Job

foreach ($result in $results) {
    Copy-Item -LiteralPath $result.File -Destination (Join-Path $slidevAssets ([System.IO.Path]::GetFileName($result.File))) -Force
}

$results | Sort-Object Title | Format-Table -AutoSize
Write-Host "Mirrored generated images into $slidevAssets."