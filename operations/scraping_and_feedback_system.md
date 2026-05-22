# Scraping, Updates, And Feedback System

## Principle

Collect information legally, repeatably, and in a way that improves decisions. Do not scrape logged-in or protected pages when a platform's terms disallow it. Prefer official APIs, RSS feeds, email alerts, manual exports, and public pages.

Logged-in research is allowed only as a user-assisted workflow: the user logs in locally, no credentials are shared, and visible pages are reviewed manually or with browser assistance. Do not automate actions that evade access controls, CAPTCHAs, rate limits, or platform terms.

## Data Sources

| Source Type | Examples | Collection Method | Frequency |
| --- | --- | --- | --- |
| Public project pages | freelancermap, freelance.de, Etengo public project search, FERCHAU project search | Respect robots/ToS; use public fetch/scraper only if permitted | Daily |
| Email alerts | Hays, GULP, Malt, LinkedIn, XING, StepStone, Indeed | Parse mailbox/export manually at first | Daily |
| Manual profile metrics | views, invites, messages, interviews | Enter in platform tracker | Weekly |
| Recruiter conversations | Hays/GULP/FERCHAU/Etengo/recruiters | CRM notes | Same day |
| Direct employer list | MedTech, robotics, aerospace, defense-adjacent, industrial automation firms | Manual research and LinkedIn | Weekly |

## Minimum Database Schema

Use CSV first. Move to SQLite only when the tracker becomes painful.

Tables/files:
- `platform_tracker.csv`: account/profile status per platform.
- `pipeline_tracker.csv`: every job, lead, application, recruiter, company, or direct opportunity.
- `data/platforms.csv`: normalized platform research and priority.
- Later: `contacts.csv`, `companies.csv`, `messages.csv`, `feedback.csv`.

## Opportunity Scoring

Score each lead from 0-20:
- Domain fit: 0-5.
- Rate fit: 0-5.
- Buyer urgency: 0-3.
- Proof fit from CV/portfolio: 0-3.
- Channel warmth: 0-2.
- Low admin/friction: 0-2.

Only spend serious application time on leads scoring 13+ unless it is a strategic relationship.

## Scraping Workflow

1. Start with manual saved searches and email alerts for 2 weeks.
2. Record the best queries and false positives.
3. Build scrapers only for sites that allow automated access or provide feeds/APIs.
4. Store raw snapshots separately from normalized tracker rows.
5. Deduplicate by platform, external ID/URL, company, title, and date.
6. Assign each lead to Trebsijg, Osama, company, or both.
7. Generate a daily shortlist sorted by opportunity score.

## Logged-In Platform Review Workflow

1. User logs in to the platform locally.
2. Review visible jobs, search filters, profile snippets, and competitor/service-provider pages that the platform makes available.
3. Capture patterns without copying competitor text directly: headline formulas, skill tags, proof-point style, rate visibility, portfolio structure, response badges, and category placement.
4. Add promising jobs to `pipeline_tracker.csv` and profile/account gaps to `platform_tracker.csv`.
5. Update profile wording in git after every meaningful learning cycle.

## What To Avoid

- Automated login scraping on LinkedIn, Malt, XING, Upwork, or similar platforms.
- Circumventing rate limits, CAPTCHAs, or access controls.
- Copying competitor profile text directly.
- Applying to low-fit jobs just to increase volume.

## Feedback Loop

Every Friday, review:
- Which platforms generated views.
- Which profiles got messages.
- Which keywords generated qualified leads.
- Which rates caused pushback.
- Which message templates got replies.
- Which profile titles need adjustment.

Then update profile copy and search queries in git with a clear commit message.
