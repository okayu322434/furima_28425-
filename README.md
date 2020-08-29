# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| hn       | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| name     | string | null: false |
| name_kana| string | null: false |
| birthday | string | null: false |

### Association
- has_many :goods
- has_many :comments


## goods テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |
| price  | string | null: false |
| category| string | null: false |
| status | string | null: false |
| delivery| string | null: false |
| area   | string | null: false |
| shipping date| string | null: false |
| like   | string | null: false |


### Association
- has_many :comments
- belongs_to :users
- belongs_to :management

## management テーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| goods_id | references | null: false, foreign_key: true |
| status  | references | null: false, foreign_key: true |
| date    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## comments テーブル

| Column  | Type    | Options                        |
| ------- |  ------- | ------------------------------ |
| content    | string  |
| user_id | references | null: false, foreign_key: true |
| room_id | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :goods