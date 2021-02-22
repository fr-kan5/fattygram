# fattygram
### 

# 概要

# 目指した課題解決

# 洗い出した要件

# 開発環境

# DB設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| email              | string              | null: false             |
| password           | string              | null: false             |
| username           | string              | null: false             |
| profile            | text                | null: false             |
| occupation         | text                | null: false             |
| position           | text                | null: false             |

### Association

* has_many :prototypes
* has_many :comments

## food table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| title                               | string     | null: false       |
| body                                | text       | null: false       |
| create_at                           | text       | null: false       |
| updated_at                          | text       | null: false       |
| user                                | references | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| text        | text       | null: false       |
| prototype   | references | foreign_key: true |
| user        | references | foreign_key: true |

### Association

- belongs_to :prototype
- belongs_to :user