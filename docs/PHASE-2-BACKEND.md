# BioTrack Phase 2 — Secure backend foundation

## Why this phase is separate
The current GitHub Pages app is a static educational prototype. It stores data in browser `localStorage`; it does not provide server-side identity, shared storage, backups, or a trusted audit trail. Keep the existing public app available while the backend is developed on a separate branch.

## Proposed stack
- **Supabase Auth** for user sign-in.
- **Supabase Postgres** for persistent records.
- **Row Level Security (RLS)** so authenticated users can access only rows they own.
- **GitHub Actions / browser tests** in a later step.
- **GitHub Pages remains the existing demo** until a separately tested backend-enabled version is ready.

## Implemented in this foundation branch
- Initial SQL migration at `supabase/migrations/202610280001_initial_measurements.sql`.
- Each measurement belongs to an authenticated `owner_id`.
- Database constraints reject obviously malformed values; these checks are technical validation, not clinical decision rules.
- RLS policies restrict select/insert/update/delete to the signed-in user's rows.
- No credentials, keys, or real patient records are included.

## Next steps
1. Create a separate Supabase project and apply the migration.
2. Configure email authentication and verify RLS with two test users.
3. Add a backend-aware application build using only the publishable/anon key in browser code; keep service-role keys server-side and secret.
4. Add loading/error states and safe migration/export from the local-only demo.
5. Add automated tests, then validate a preview deployment before considering any production use.

## Safety and scope
This is not a certified clinical system. Do not enter identifiable patient data. Before any real-world clinical use, obtain a security/privacy review, define retention and backup/recovery procedures, add appropriate audit logging, and confirm applicable legal and institutional requirements. The SQL schema alone does not make the app production-ready.
