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