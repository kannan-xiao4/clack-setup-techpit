# clack-setup-techpit

## Environment
AWS Cloud9
Platform: Ubuntu Server 18.04 LTS

## Setup
コマンドライン上で下記を実行。
```
sh setup.sh
sh install_rbenv.sh
source ~/.bash_profile
rbenv local 2.7.2
ruby -v
gem install bundler
gem install rails -v 6.0.3.4
rails -v
```

## Check install rails
コマンド
```
gem search ^rails$ -l
```

実行結果
```
*** LOCAL GEMS ***

rails (6.0.3.4)
```

## (optional) Create rails app

rails アプリケーションの作成
```
cd ~/environment
rails _6.0.3.4_ new techpitgram
```

rails の起動確認
```
cd techpitgram
rails s
```

## Allow development access

初回の起動時は、Railsのセキュリティ設定によりエラー画面になる。
エラー下部黒字の「config.hosts << "○○.com"」をコピーして、 `techpitgram/config/environments/development.rb` の `Rails.application.configure do ~ end` の間に貼り付け。

Railsを再起動して、ブラウザでrailsのスタートアップページの表示を確認
