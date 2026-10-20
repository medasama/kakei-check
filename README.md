# 引落チェック (hikiotoshi-check)
クレジットカードの引落額と、引落後の残高見込みを確認するツール。単一HTML。
- 保存: Supabase `cashflow_store` テーブル（合言葉で AES-GCM 暗号化）＋端末キャッシュ
- 初回のみ `schema.sql` を Supabase SQL Editor で実行
