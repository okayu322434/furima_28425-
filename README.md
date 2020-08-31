# テーブル設計
<!--https://viewer.diagrams.net/?highlight=0000ff&edit=_blank&layers=1&nav=1#G1WmLXD5sMTlkkS32R9o7Q1Gpmu7joY66w-->

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| family_name| string | null: false |
| first_name| string | null: false |
| family_name_kana| string | null: false |
| first_name_kana| string | null: false |
| birthday | date   | null: false |

### Association
- has_many :goods
- has_many :comments


## goods テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |
| price  | integer| null: false |
| comment| string| null: false |
| price  | integer| null: false |
| category| integer| null: false |
| status | integer| null: false |
| delivery| integer| null: false |
| area   | integer| null: false |
| shipping date| integer| null: false |

### Association
- has_many :comments
- belongs_to :user
- belongs_to :management

## management テーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| user | references | null: false, foreign_key: true |
| goods | references | null: false, foreign_key: true |

### Association

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

##  shipping テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| goods    | string | null: false |
| plyce    | string | null: false |
| pay      | string | null: false |

### Association

- belongs_to :users
- belongs_to :goods