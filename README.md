# clack-setup-techpit

## セットアップ
コマンドライン上で下記を実行。
```
sh setup.sh
sh install_rbenv.sh
source ~/.bash_profile
sh install_rails.sh
```

## railsのインストールを確認
```
gem search ^rails$ -l
```

expect
```
gem search ^rails$ -l

*** LOCAL GEMS ***

rails (6.0.3.4)
```

## (備考) rails app 作成

rails アプリケーションの作成
```
cd ~/enviroment
rails _6.0.3.4_ new techpitgram
```

rails の起動確認
```
cd techpitgram
rails s
```

ブラウザでrailsのスタートアップページの表示を確認
