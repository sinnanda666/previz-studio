create table if not exists public.previz_projects (id uuid primary key default gen_random_uuid(), owner uuid not null references auth.users(id) on delete cascade, name text not null, data jsonb not null, created_at timestamptz not null default now());
alter table public.previz_projects enable row level security;
create policy "own read" on public.previz_projects for select to authenticated using (auth.uid() = owner);
create policy "own insert" on public.previz_projects for insert to authenticated with check (auth.uid() = owner);
grant select, insert on public.previz_projects to authenticated;
