アプリケーション名	
FROM＿WHO
アプリケーション概要	
・顧客が担当となる営業社員を選ぶことがが出来る。

URL	デプロイ済みのURLを記述。デプロイが済んでいない場合は、デプロイが完了次第記述すること。
テスト用アカウント	ログイン機能等を実装した場合は、ログインに必要な情報を記述。またBasic認証等を設けている場合は、そのID/Passも記述すること。

利用方法
・会員登録したユーザーが営業担当の社員の情報を閲覧し、お客様側から面会の申し込みや、どのように営業をかけて欲しいかを
業者に対して伝えることが出来る。
・業者側もどんなお客さんがどんな提案を受けたいか予めわかるので提案内容を考えて行きやすい。
・担当者が決まったら、お客様はその担当のページしか見ることが出来なくなり、担当者は伝えたいことを日々入力する。
（担当者が決まる前は複数いる担当者の日々の情報内容を確認できる。）

・モテすぎ問題を解決
時間がなくなるので
・お客様の知識・経験や、購入金額をもとにアプローチ出来る社員を分けることが出来る。


目指した課題解決	このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記述。
・業者と取引を検討している顧客が、自分に合わない営業社員が自分の担当者にならないようにすることが出来る。



洗い出した要件	スプレッドシートにまとめた要件定義を記述。


実装した機能についての画像やGIFおよびその説明	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記述。画像はGyazoで、GIFはGyazoGIFで撮影すること。

実装予定の機能	洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記述。

データベース設計	ER図等を添付。

ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。この時、アプリケーション
開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）。















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