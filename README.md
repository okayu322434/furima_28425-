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
- has_many :managements

## goods テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| user   | references | foreign_key: true |
| name   | string | null: false |
| price  | integer| null: false |
| comment| text   | null: false |
| price  | integer| null: false |
| category| integer| null: false |
| status | integer| null: false |
| delivery| integer| null: false |
| area   | integer| null: false |
| shipping date| integer| null: false |

### Association
- has_many :comments
- belongs_to :user
- has_one :management

## management テーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| user | references | null: false, foreign_key: true |
| good | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :good
- has_one :shipping

## comments テーブル

| Column  | Type    | Options                        |
| ------- |  ------- | ------------------------------ |
| content    | string  |
| user | references | null: false, foreign_key: true |
| room | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :goods

##  shipping テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| management| references | foreign_key: true |
| postcode | string | null: false |
| prefecture_id| integer | null: false |
| city     | string | null: false |
| address  | string | null: false |
| buildeing| string | null: false |
| phone_number| string | null: false |



### Association

- belongs_to :management