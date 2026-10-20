-- hikiotoshi-check: Supabase schema（冪等）
-- 中身は合言葉でブラウザ側で暗号化した文字列のみ保存される。
create table if not exists cashflow_store (
  id text primary key,
  payload text not null,
  updated_at timestamptz not null default now()
);

alter table cashflow_store enable row level security;

drop policy if exists "cashflow_store_anon_all" on cashflow_store;
create policy "cashflow_store_anon_all"
  on cashflow_store
  for all
  to anon
  using (true)
  with check (true);
