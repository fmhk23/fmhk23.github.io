---
title: Mac OS XでPostgreSQLをセットアップ
keywords: PostgreSQL Mac
tags: [PostgreSQL]
sidebar: base_sidebar
permalink: PostgresonMac.html
---

PostgreSQLのインストール手順をメモ。

### ダウンロード&インストール
[https://www.postgresql.org/download/macosx/](https://www.postgresql.org/download/macosx/)  
今回はインストーラーを落としてきて普通にインストールする。(Homebrewを使う方法などもあるらしい。)

### psqlのパスを通す
パスを通さないとpsqlコマンドが使えない。

[How to run psql on Mac OS X?](https://dba.stackexchange.com/questions/3005/how-to-run-psql-on-mac-os-x)

好きなエディタを使って編集する。  
`sudo emacs .bash_profile`

下記を書き足して保存。  
`PATH="/Library/PostgreSQL/9.6/bin/:${PATH}"`

上記パスはMacにおけるデフォルトなので、変更がなければバージョン変更だけですむはず。
ちなみにemacsの終了は C-x C-c。(Control + x、Control + c)

### Postgres.app
[postgres.app](http://postgresapp.com/)  

まだインストールしただけだが、このツールも便利そう。
