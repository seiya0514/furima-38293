# テーブル設計

##usersテーブル

| Column              | Type   | Options                    |
| nicname             | string | null: false, unique: true  |
| email               | string | null: false, unique: true  |
| encrypted_password  | string | null: false                |
| last_name           | string | null: false                |
| first_name          | string | null: false                |
| last_name_kana      | string | null: false                |
| first_name_kana     | string | null: false                |
| birthday            | date   | null: false                |


##itemsテーブル
| Column           | Type       | Options                        |
| user             | references | null: false, foreign_key: true |
| name             | string     | null: false                    |
| description      | text       | null: false                    |
| category_id      | integer    | null: false                    |
| item_status_id   | integer	  | null: false                    |
| shipping_cost_id | integer    | null: false                    |
| prefecture_id    | integer    | null: false                    |
| shipping_date_id | integer    | null: false                    |
| price            | integer    | null: false                    |


##ordersテーブ
| Column           | Type       | Options                        |
| user             | references | null: false, foreign_key: true |
| item             | references | null: false, foreign_key: true |


##paymentsテーブル
| Column           | Type       | Options                        |
| order            | references | null: false, foreign_key: true |
| postcode         | string     | null: false                    |
| prefecture_id    | integer    | null: false                    |
| city             | string     | null: false, foreign_key: true |
| block	           | string     | null: false, foreign_key: true |
| building         | string	    |foreign_key: true               |
| phone_number     | string     | null: false, foreign_key: true |







