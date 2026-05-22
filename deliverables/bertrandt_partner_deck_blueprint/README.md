# Bertrandt Partner Deck — Blueprint Engineering (HTML)

A second visual concept for the Bertrandt partner profile, built as a static HTML deck.

## Concept

**Blueprint Engineering** — a technical-drawing aesthetic that frames InteSpring Control Systems as an engineering submission rather than a sales deck.

- Deep navy "blueprint paper" background with a cyan grid (20 px / 100 px)
- Title block + footer rule on every sheet (sheet number, section, revision, firm)
- Dimension-style labels (`FIG.01 — …`), corner ticks on framed assets
- Mono callouts (JetBrains Mono) for IDs, tags, specs; Inter for body
- Accent: signal orange `#FF7847` for key metrics and emphasis bars

## Palette

| Token        | Hex       | Use                        |
|--------------|-----------|----------------------------|
| Navy         | `#0B1B2B` | Sheet background           |
| Navy-2       | `#0F2438` | Cards / inset panels       |
| Cyan         | `#4FD1E0` | Headings accent, grid, IDs |
| Cyan-dim     | `#2B7E89` | Secondary labels, frames   |
| Paper        | `#F4F6FA` | Body text                  |
| Paper-dim    | `#BFC8D6` | Secondary body             |
| Signal orange| `#FF7847` | Metrics, emphasis bars     |

## How to view

Open `index.html` directly in a browser. To export a PDF, print at 1280×720 (or A4 landscape) with backgrounds enabled.

## Files

- `index.html` — 9 sheets (hero, fit, sense/control/actuate, programs, deliverables, team, proof, Centaur case, next step)
- `styles.css` — full visual system
- `assets/` — shared imagery (copied from the original deck)
