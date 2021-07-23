## アプリケーション名	
FROM＿WHO（誰から）
アプリケーション概要	
・顧客が担当となる営業社員を選ぶことが出来る。
・担当はお客様にWEB上でアピール出来る。
・顧客が担当を決めた後は営業社員の日々の情報発信を見ることが出来る。
・顧客からWEB上で気軽に営業担当にアプローチが出来る。

## 制作の意図
世の中のお客様の大半は、営業マンを選べない事が多いです。
たまたま行ったお店にたまたまいた社員なのか、たまたま営業をかけてきた社員なのか。
転勤してしまった営業マンの後任は会社が会社が決めてしまうことも。
予めお客様が営業マンを選んで自分の担当に出来たらいいなと思いこのアプリを作りました。

## URL	
https://from-who.herokuapp.com/

## テスト用アカウント	
営業担当 アカウント  1@a  パスワード a111111
顧客    アカウント  11@a パスワード a111111


## 利用方法
上記URLにアクセスしてユーザー登録をしていただく。

##  目指した課題解決	
・業者と取引を検討している顧客が、自分に合わない営業社員が自分の担当者にならないようにすることが出来る。
・顧客から営業担当にアプローチ出来る。
・会員登録したユーザーが営業担当の社員の情報を閲覧し、お客様側から面会の申し込みや、どのように営業をかけて
欲しいかを業者に対して伝えることが出来る。
・業者側もどんなお客さんがどんな提案を受けたいか予め解るので提案内容を準備出来る。
・担当者が決まったら、お客様はその担当のページしか見ることが出来なくなり、担当者は伝えたいことを日々入力することが出来る。
（担当者が決まる前は複数いる担当者の日々の情報内容を確認できる。）

・モテすぎ問題を解決することが出来る。（顧客からのアプローチが多すぎると対応仕切れなくなるため）
 お客様の知識・経験や、今回の購入金額をもとにアプローチ出来る回数・社員を分けることが出来る。

## 洗い出した要件
・ユーザー管理機能
・ログインID振り分け機能
・重複登録制限機能
・ユーザー削除機能
・営業担当プロフィール投稿機能
・営業担当プロフィール詳細表示機能
・営業担当プロフィール編集機能
・営業担当プロフィール削除機能
・営業担当一覧表示機能

## 今後実装したい機能
・ユーザー情報編集機能
・顧客からの問い合わせ一覧参照機能
・顧客プロフィール投稿機能
・顧客プロフィール編集機能
・active storageによるプロフィールの投稿機能
・担当顧客プロフィール一覧表示機能
・担当者決定後の詳細観覧制限機能
・担当者決定後の顧客情報観覧制限機能


## 実装予定の機能	
洗い出した要件のユーザー情報編集機能以降の要件は今後実装予定。

## データベース設計	
https://gyazo.com/9c64dbe633d50997c193d47b6e71f566

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

| Column     | Type       | Options           |
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