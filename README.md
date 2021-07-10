# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| profile            | string | null: false |
| profile_image_id   | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :recipes


## recipes テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| user           | references | null: false, foreign_key: true |
| recipe_title   | string     | null: false                    |
| recipe_details | string     | null: false                    |

### Association

- belongs_to :user