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
rbenv global 2.7.2
ruby -v
gem install bundler
gem install rails -v 6.0.3.4
rails -v
```

## Check install rails
コマンと
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

ブラウザでrailsのスタートアップページの表示を確認
