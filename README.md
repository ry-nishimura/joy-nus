# アプリ名

joy-nus

# アプリの概要

- 助っ人の募集ができる

- 助っ人への参加ができる

# URL

# テスト用アカウント

# 利用方法

ユーザー登録を行う。助っ人を募集したい場合は、募集ボタンを押し、詳細を入力して投稿する。
募集にはコメント機能があり、そこで投稿主と会話することができる。


# 目指した問題解決

- 助っ人集めにかかる負担を軽減

- 休日に団体スポーツをしたいが、やる場所や一緒にやる人がいない人への機会を提供

- 助っ人を通じた、社会人スポーツの輪の拡大

# 洗い出した用件

- ユーザー管理機能

- 助っ人募集機能

- 募集の編集機能

- 募集の削除機能

- 募集へのコメント機能

- 募集の検索機能

# 実装した機能についてのGIFと説明

# 実装予定の機能

- フォロー機能

- ユーザー検索機能

# データベース設計

## usersテーブル

| Column             | Type    | Options     |
| ------------------ | --------| ------------|
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| birthday           | date    | null: false | 
| favorite_sports    | string  | null: false |
| prefecture_id      | integer | null: false |

### Association

- has_many :recruitments
- has_many :comments
- belongs_to_active_hash :prefecture

## recruitmentsテーブル

| Column        | Type       | Options           |
| ------------- | ---------- | ----------------- |
| date          | date       | null: false       |
| time          | time       | null: false       |
| team          | string     | null: false       |
| sport         | string     | null: false       |
| place         | string     | null: false       |
| position      | string     |                   |
| experience_id | integer    |                   |
| user          | references | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- belongs_to_active_hash :experience

## commentsテーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| content     | text       | null: false       |
| user        | references | foreign_key: true |
| recruitment | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :recruitment

# ローカルでの動作方法