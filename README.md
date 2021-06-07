# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |


## Association

- has_one : profile
- has_one : customer_profile

## profileテーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ----------------- |
| message    | text       | null: false       |
| age        | integer    | null: false       |
| career     | string     | null: false       |
| user       | references | foreign_key: true |

## Association

- belongs_to :user

## customer_profileテーブル

| Column      | Type       | Options            |
| ----------- | ---------- | ------------------ |
| age         | integer    | null: false        |
| user        | references | foreign_key: true  |
| income_id   | integer    | null: false        |
| asset_id    | integer    | null: false        |
| policy_id   | integer    | null: false        |
| thistime_id | integer    | null: false        |
| user_id     | integer    | null: false        |


## Association

- belongs_to :user