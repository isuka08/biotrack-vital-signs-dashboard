-- BioTrack Phase 2: initial Supabase/Postgres schema
-- Educational starter migration only. Do not use for identifiable patient data.
-- Apply in a dedicated Supabase project after reviewing the security model.

create table if not exists public.measurements (
  id uuid primary key default gen_random_uuid(),
  owner_id uuid not null references auth.users(id) on delete cascade,
  record_code text not null check (char_length(record_code) between 1 and 80),
  recorded_at timestamptz not null,
  heart_rate integer check (heart_rate is null or heart_rate between 1 and 300),
  spo2 numeric(5,2) check (spo2 is null or spo2 between 0 and 100),
  temperature_c numeric(4,2) check (temperature_c is null or temperature_c between 20 and 50),
  systolic_bp integer check (systolic_bp is null or systolic_bp between 30 and 300),
  diastolic_bp integer check (diastolic_bp is null or diastolic_bp between 20 and 200),
  notes text check (notes is null or char_length(notes) <= 1000),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint measurement_record_code_per_owner unique (owner_id, record_code)
);

create index if not exists measurements_owner_recorded_at_idx
  on public.measurements (owner_id, recorded_at desc);

alter table public.measurements enable row level security;

-- Users can access only their own records. The application must use the user's
-- authenticated session; never expose a service-role key in browser code.
create policy "Users can read their own measurements"
  on public.measurements for select
  to authenticated
  using (auth.uid() = owner_id);

create policy "Users can insert their own measurements"
  on public.measurements for insert
  to authenticated
  with check (auth.uid() = owner_id);

create policy "Users can update their own measurements"
  on public.measurements for update
  to authenticated
  using (auth.uid() = owner_id)
  with check (auth.uid() = owner_id);

create policy "Users can delete their own measurements"
  on public.measurements for delete
  to authenticated
  using (auth.uid() = owner_id);

-- Keep updated_at current on edits.
create or replace function public.set_measurement_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists set_measurement_updated_at on public.measurements;
create trigger set_measurement_updated_at
before update on public.measurements
for each row execute function public.set_measurement_updated_at();
