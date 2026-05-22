# Bertrandt Partner Deck — Editorial Magazine (Slidev)

A second visual concept for the Bertrandt partner profile, built as a live Slidev pitch.

## Concept

**Editorial Magazine** — a high-end print-magazine treatment that frames InteSpring Control Systems as the cover story of a quarterly publication.

- Ivory paper with a masthead and folio on every page
- Serif display (Fraunces) for headlines and pull quotes, Inter for body
- Asymmetric two-column layouts, drop caps, a giant pull quote, big editorial numbers
- Accent: ember red `#D2492A` for emphasis and italics, deep teal `#14524B` for secondary
- Tone: confident, considered, editorial — not a sales deck

## Palette

| Token  | Hex       | Use                          |
|--------|-----------|------------------------------|
| Ivory  | `#F1ECE2` | Page background              |
| Ink    | `#111111` | Body text, rules             |
| Ink-soft | `#2A2A2A` | Body paragraphs            |
| Ink-mute | `#6B675F` | Captions, folios           |
| Ember  | `#D2492A` | Italic emphasis, kickers, metrics |
| Teal   | `#14524B` | Secondary accents             |

## Run

```powershell
npm install
npm run dev         # http://localhost:3030
npm run export      # writes dist/intespring_bertrandt_partner_profile_editorial_slidev.pdf
```

## Files

- `slides.md` — 9 spreads (cover, fit, big numbers, manifesto, programs index, team portraits, gallery, long-read case, back cover)
- `style.css` — full editorial visual system
- `public/assets/` — shared imagery (copied from the original deck)
