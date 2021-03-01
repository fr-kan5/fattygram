# fattygram
### 

# 概要
太っちょの太っちょによる太っちょのための食べ物プラットフォーム

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
| profile_image_id   | text                | null: false             |
| create_at          | text       | null: false       |
| updated_at         | text       | null: false       |

### Association

* has_many :foods

## foods table

|                             | Type       | Options           |
|-------------------------------------|------------|-------------------|
| title                               | string     | null: false       |
| body                                | text       | null: false       |
| create_at                           | text       | null: false       |
| updated_at                          | text       | null: false       |
| user                                | references | foreign_key: true |

### Association

- belongs_to :user
