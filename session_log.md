## 2026-05-22 — Narrow Offer Positioning Around PCB And Embedded Controls

**Objective:** Apply the updated procurement-first positioning across profiles, decks, strategy, and supporting documents, then regenerate the Bertrandt pitch PDFs.

**Changes:**
- `profiles/company_profile.md` — company profile sections: narrowed the opening to DACH hardware teams, PCB electronics, embedded control systems, validation, and documentation; moved sectors into supporting context; grouped programs/tools by outcome.
- `profiles/trebsijg_profile.md` — Trebsijg profile sections: shifted headline, bio, rates, and German snippet toward PCB electronics, embedded-control planning, and technical documentation for regulated or certification-sensitive development.
- `profiles/osama_profile.md` — Osama profile sections: shifted headline and bio toward PCB electronics, embedded control interfaces, RF/UAV validation, and measurement systems.
- `deliverables/bertrandt_partner_deck/index.html` — HTML deck sections: updated hero, relevance slide, tool stack, and team copy to lead with PCB, embedded control, validation, documentation, and outcome-grouped capabilities.
- `deliverables/bertrandt_partner_deck/bertrandt_message.md` — portal message: updated German Bertrandt outreach copy with narrower offer hierarchy and sector/proof-point ordering.
- `deliverables/bertrandt_partner_deck/branding_style.md` — style guidance: updated HTML deck brand rules to lead with PCB/control/validation/documentation and outcome-grouped tooling.
- `deliverables/bertrandt_partner_deck/dist/intespring_bertrandt_partner_profile.pdf` — export: regenerated the HTML deck PDF.
- `deliverables/bertrandt_partner_slidev/slides.md` — Slidev deck sections: updated hero, fit, engineering stack, team, and proof-point slides with the narrowed offer and outcome grouping.
- `deliverables/bertrandt_partner_slidev/branding_style.md` — style guidance: updated Slidev brand rules to lead with the buyable PCB/control/validation/documentation offer.
- `deliverables/bertrandt_partner_slidev/dist/intespring_bertrandt_partner_profile_slidev.pdf` — export: regenerated the Slidev deck PDF.
- `strategy/00_fastest_path.md` — sales strategy: reordered priority offers around PCB electronics and embedded control review, with sectors as proof/context.
- `strategy/01_platforms_priority.md` — platform notes: softened defense-first wording to defense-adjacent context.
- `README.md` — immediate goal: aligned revenue target wording with PCB electronics, embedded control systems, validation, and certification-sensitive documentation.
- `operations/search_queries.md` — search terms: softened defense search wording to defense-adjacent.
- `operations/scraping_and_feedback_system.md` — research workflow: softened direct employer category wording to defense-adjacent.
- `session_log.md` — change history: added this entry and removed stale hype-prone wording from the previous entry.

## 2026-05-22 — Reframe Bertrandt Pitch As InteSpring Control Systems

**Objective:** Update the company profile and Bertrandt pitch materials around the InteSpring Control Systems story, clearer deliverables, team framing, and practical engineer-supervised automation.

**Changes:**
- `profiles/company_profile.md` — company profile sections: reframed public offer as InteSpring Control Systems, expanded programs/tools, deliverables, RTOS/digital-twin capability, and engineer-supervised automation language.
- `profiles/coen_profile.md` — Coen profile sections: removed freelancer framing from the headline, bio, and selected experience.
- `profiles/trebsijg_profile.md` — Trebsijg profile sections: replaced hype-prone documentation wording with engineer-supervised documentation automation.
- `strategy/00_fastest_path.md` — positioning sections: softened AI language and added engineer-supervised documentation automation framing.
- `deliverables/bertrandt_partner_deck/index.html` — HTML deck sections: shortened and rebuilt the German pitch around InteSpring Control Systems, team delivery, tool stack, deliverables, proof points, RTOS/digital-twin capability, and engineer-supervised automation.
- `deliverables/bertrandt_partner_deck/styles.css` — HTML deck styling: added layouts for tool stack, team, proof grid, and deliverable slides with updated InteSpring footer branding.
- `deliverables/bertrandt_partner_deck/bertrandt_message.md` — portal message: aligned Bertrandt outreach copy with InteSpring naming, deliverables, RTOS/digital-twin capability, and engineer-supervised automation.
- `deliverables/bertrandt_partner_deck/asset_sources.md` — asset provenance: updated deck naming from Coilworks to InteSpring Control Systems.
- `deliverables/bertrandt_partner_deck/branding_style.md` — created: added HTML/PDF brochure branding and copy rules.
- `deliverables/bertrandt_partner_deck/dist/intespring_bertrandt_partner_profile.pdf` — export: generated the updated InteSpring-named HTML deck PDF.
- `deliverables/bertrandt_partner_deck/dist/coilworks_bertrandt_partner_profile.pdf` — export: removed the stale Coilworks-named PDF.
- `deliverables/bertrandt_partner_slidev/slides.md` — Slidev deck sections: shortened and rebuilt the English live-pitch deck around InteSpring Control Systems, deliverables, engineering stack, team, proof points, RTOS/digital twins, and engineer-supervised automation.
- `deliverables/bertrandt_partner_slidev/style.css` — Slidev styling: rebuilt the presentation visual system for statement slides, grids, proof walls, and live-pitch pacing.
- `deliverables/bertrandt_partner_slidev/package.json` — package metadata: renamed package and export output to InteSpring.
- `deliverables/bertrandt_partner_slidev/package-lock.json` — package metadata: aligned lockfile package name with InteSpring rename.
- `deliverables/bertrandt_partner_slidev/README.md` — deck documentation: updated description and exported PDF filename.
- `deliverables/bertrandt_partner_slidev/branding_style.md` — created: added Slidev-specific live-pitch branding and copy rules.
- `deliverables/bertrandt_partner_slidev/dist/intespring_bertrandt_partner_profile_slidev.pdf` — export: generated the updated InteSpring-named Slidev deck PDF.
- `deliverables/bertrandt_partner_slidev/dist/coilworks_bertrandt_partner_profile_slidev.pdf` — export: removed the stale Coilworks-named PDF.

## 2026-05-21 — Clean Up Bertrandt Deck Visuals

**Objective:** Remove the generated prompt images from the repository and make the HTML deck slide background treatment consistent.

**Changes:**
- `deliverables/bertrandt_partner_deck/styles.css` — slide backgrounds: removed special `statement` and `closing` background overrides so HTML slides share the same color system.
- `deliverables/bertrandt_partner_deck/assets/` — generated assets: removed five generated PNG images that should not be used.
- `deliverables/bertrandt_partner_slidev/public/assets/` — generated assets: removed the mirrored generated PNG images from the Slidev asset folder.
- `operations/generate_bertrandt_prompt_images.ps1` — generated image script: removed the image generation helper.
- `session_log.md` — change history: removed the generated-image entry and recorded this cleanup.

## 2026-05-21 — Refine Bertrandt Deck Production Positioning

**Objective:** Update both Bertrandt deck versions with production-partner positioning, consistent visual treatment, image prompts, regenerated PDFs, and aligned business-development copy.

**Changes:**
- `deliverables/bertrandt_partner_deck/index.html` — deck sections: updated capacity to 100 h/week, added production/sourcing/quality/assembly positioning, added Osama and Coen portrait profile slides, and added a production pathway slide.
- `deliverables/bertrandt_partner_deck/styles.css` — visual system: aligned palette, font stack, light profile treatment, compact card layout, and production-path sizing.
- `deliverables/bertrandt_partner_deck/assets/` — assets: added Osama Shah and Coen Greidanus portrait copies for the HTML deck.
- `deliverables/bertrandt_partner_deck/asset_sources.md` — asset provenance: documented public InteSpring team portrait source URLs.
- `deliverables/bertrandt_partner_deck/bertrandt_message.md` — portal message: added manufacturing, sourcing, assembly, quality-control capability and Coen availability.
- `deliverables/bertrandt_partner_deck/dist/coilworks_bertrandt_partner_profile.pdf` — export: regenerated the HTML deck PDF.
- `deliverables/bertrandt_partner_slidev/slides.md` — Slidev deck: added production partner content, prototype-to-series slide, consistent Osama profile styling, and manufacturing-path closing language.
- `deliverables/bertrandt_partner_slidev/style.css` — visual system: matched the HTML deck palette/font treatment and removed the dark profile slide style.
- `deliverables/bertrandt_partner_slidev/dist/coilworks_bertrandt_partner_profile_slidev.pdf` — export: regenerated the Slidev comparison PDF.
- `deliverables/bertrandt_partner_image_prompts.md` — created: added future image prompts for manufacturing, sourcing, quality control, control systems, and team visuals.
- `profiles/company_profile.md` — company positioning: added prototype-to-series, EU-only manufacturing, sourcing, assembly, and quality-control capability.
- `operations/commercial_intake.md` — commercial source of truth: added production partner positioning and cost-flexible sourcing rules.
- `strategy/00_fastest_path.md` — sales positioning: updated to a three-person specialist engineering cell and added a prototype-to-series offer.
- `README.md` — workspace overview: added production partner capability to the operating context.

## 2026-05-21 — Add English Slidev Bertrandt Comparison Deck

**Objective:** Add an English Slidev version of the Bertrandt partner profile deck, including Osama and Coen portraits, Coen's 20 h/week profile, and an exported comparison PDF.

**Changes:**
- `deliverables/bertrandt_partner_slidev/slides.md` — created: added an English Slidev deck with Coilworks positioning, InteSpring proof points, Trebsijg, Osama Shah, Coen Greidanus, engagement model, and 100 h/week combined availability.
- `deliverables/bertrandt_partner_slidev/style.css` — created: added custom Slidev styling for cards, portraits, proof-point visuals, tags, metrics, and dark profile slides.
- `deliverables/bertrandt_partner_slidev/package.json` — created: added Slidev preview/export scripts and dependencies.
- `deliverables/bertrandt_partner_slidev/package-lock.json` — created: locked Slidev dependency versions used for export.
- `deliverables/bertrandt_partner_slidev/README.md` — created: documented preview and export commands for the Slidev deck.
- `deliverables/bertrandt_partner_slidev/asset_sources.md` — created: documented public InteSpring source URLs for reused proof-point images and team portraits.
- `deliverables/bertrandt_partner_slidev/public/assets/` — created: added local Slidev asset copies, including Osama Shah and Coen Greidanus portraits from the public InteSpring about page.
- `deliverables/bertrandt_partner_slidev/dist/coilworks_bertrandt_partner_profile_slidev.pdf` — created: exported the English Slidev comparison deck to PDF.
- `profiles/Profile.pdf` — added: included the uploaded Coen profile PDF used as source material.
- `profiles/coen_profile.md` — created: added a Coen Greidanus profile grounded in the uploaded PDF and public InteSpring team information.
- `README.md` — workspace overview: added Coen's 20 h/week availability and profile link.
- `operations/commercial_intake.md` — availability: added Coen's 20 h/week availability.
- `profiles/company_profile.md` — company availability: added Coen's 20 h/week availability.
- `strategy/00_fastest_path.md` — availability: added Coen's 20 h/week availability.
- `.gitignore` — dependency hygiene: ignored Node dependency folders created by Slidev.

## 2026-05-21 — Build Bertrandt Partner Profile Deck

**Objective:** Create a German HTML-to-PDF partner profile package for the Bertrandt application using Coilworks GmbH positioning and public InteSpring Control Systems visuals.

**Changes:**
- `deliverables/bertrandt_partner_deck/index.html` — created: added a 13-slide German partner profile deck covering value proposition, capabilities, individual profiles, proof points, engagement model, and contracting details.
- `deliverables/bertrandt_partner_deck/styles.css` — created: added print-ready 16:9 slide styling, responsive layout rules, and PDF page sizing.
- `deliverables/bertrandt_partner_deck/bertrandt_message.md` — created: added a portal-ready German message draft for the Bertrandt application form.
- `deliverables/bertrandt_partner_deck/asset_sources.md` — created: documented source URLs for the public InteSpring images used in the deck.
- `deliverables/bertrandt_partner_deck/assets/` — created: added local copies of the public InteSpring Control Systems images used by the deck.
- `deliverables/bertrandt_partner_deck/dist/coilworks_bertrandt_partner_profile.pdf` — created: exported the HTML deck to a PDF profile attachment.
- `operations/pipeline_tracker.csv` — pipeline tracker: added Bertrandt Partner as a qualified direct-application lead pending upload.
- `.gitignore` — export hygiene: ignored temporary browser profile directories created during PDF export.

## 2026-05-06 — Capture Coilworks Commercial Intake

**Objective:** Record the user-provided contracting, availability, rate, package, PCB, and portfolio-permission details and propagate them into the business-development workspace.

**Changes:**
- `operations/commercial_intake.md` — created: added source-of-truth details for Coilworks GmbH contracting, address, VAT ID, availability, rates, fixed-price packages, Trebsijg PCB positioning, anonymous portfolio examples, and platform status.
- `README.md` — workspace overview: updated the operating context from InteSpring-only positioning to Coilworks GmbH contracting backed by InteSpring credibility, plus availability and intake links.
- `profiles/company_profile.md` — company profile copy: updated company positioning, Coilworks contracting details, fixed-price packages, availability, anonymous proof points, and Trebsijg Altium/KiCad PCB strengths.
- `profiles/trebsijg_profile.md` — Trebsijg profile copy: added Altium/KiCad, sensor, microcontroller, wearable, and medical PCB positioning plus availability and package guidance.
- `profiles/osama_profile.md` — Osama profile copy: added availability, Coilworks contracting rule, and fixed-scope package guidance.
- `strategy/00_fastest_path.md` — sales strategy: added Coilworks contracting, minimum engagement, standard analysis/prototype packages, Altium/KiCad PCB scope, anonymous proof points, and availability.
- `operations/scraping_and_feedback_system.md` — logged-in review workflow: documented safe user-assisted logged-in platform research and competitor profile analysis boundaries.
- `operations/platform_tracker.csv` — platform setup tracker: added Coilworks contracting notes, no-account status, and more specific first actions for medical/wearable PCB and company registration.
- `operations/search_queries.md` — search terms: added Altium, KiCad, sensor PCB, microcontroller PCB, wearable electronics, and medical electronics prototype queries.