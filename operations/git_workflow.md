# Git Workflow

## Repository Purpose

This repo tracks the business-development system: profiles, platform research, lead trackers, search queries, feedback, and process improvements.

## Branches

- `main`: current trusted operating plan.
- Optional feature branches: `profile-refresh-YYYY-MM`, `platform-research-YYYY-MM`, `automation-v1`.

## Commit Style

Use small commits with clear messages:

- `docs: add platform priority matrix`
- `profiles: update osama rf test automation positioning`
- `ops: add may lead tracker entries`
- `data: refresh platform priority scores`
- `automation: add public feed parser`

## Weekly Routine

1. Pull latest changes if collaborating.
2. Update CSV trackers during the week.
3. On Friday, review what changed.
4. Commit profile, tracker, and strategy updates separately.
5. Tag important snapshots as `review-YYYY-MM-DD` if needed.

## Sensitive Data

Keep credentials, private contacts, contracts, and non-public client material out of git unless the repository is private and access-controlled. Use `.gitignore` and store secrets in a password manager.
