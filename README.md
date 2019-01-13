# データベース設計

## tweetsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text||
|image|text|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|avatar|text||
|email|text|null: false, unique: true|

### Association
- has_many :tweets
- has_many :comments


## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :tweet
- belongs_to :user
