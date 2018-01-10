---
title: "NEM Global Hackathon NEM-KYU"
date: "2017/01/10"
output: rmarkdown::html_vignette
sidebar: base_sidebar
permalink: nem_global_hackathon_nem_kyu.html
keywords: ブロックチェーン
vignette: >
  %\VignetteIndexEntry{Vignette Title}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---

<a href ="https://hackathon.nem.io/", target = "blank">NEM Global Hackathon</a>にNEM-KYUというアプリケーションのアイデアで参加してみたところ、1次,2次予選を通過したのでそれについてまとめます。
自分のタスク整理の意味合いも大きいです。  

## NEM-KYU 提出原稿

NEM-KYU is simple application for Attendance Management and Emergency Contact.  
  
### Basic idea/Problems this app solves
In Japan, most workers can't take all of their paid holidays.  
Though there are many possible reasons, it is because :  

- no punishment to company even if their workers can't take enough paid holidays
- no friendly system for telling that workers want a holiday. In many cases they must make a phone call/e-mail or talk with their boss directly.

In NEM-KYU, workers get "Company_NAME:paid-holiday" mosaic at the beginning of the year.  
When one wants a holiday, he just needs to send a mosaic to company address. (Company has its own address and name-space.)  
By triggering mosaic-receive, it can run any program like sending messages to his colleagues.  

Additionally, since NEM-KYU is on public-chain, any people can check mosaic transfer to company address, which means people can know if it is worker friendly company or not.  

Moreover, it enables such futuristic systems very easily:  

- trade paid-holidays and XEM with his colleagues
- get XEM refunds for expired holidays from company

NEM-KYU is useful in Emergency contact, too.  
At the time of disaster, company wants to know if their colleagues are safe or not as soon as possible.  
In such cases, workers can tell by sending "Company_NAME:Safe" mosaic to company address.  

Since it is completely same system with Attendance management, workers don't need another training for using specific system.  
If necessary, he can add messages.  
If their family/friends knows his address, they can know if he is safe by checking the transactions from the address.  
No need to contact directly, which causes traffic jam in network.  

In this hackathon, I develop basic functions for attendance management.  

## 和訳(意訳＋補足)
NEM-KYU(年休→NEN-KYU→NEM-KYU)は勤怠管理と非常時の連絡用のシンプルなアプリケーションです。  

### 基本的なアイデア/解決できる課題
日本では、多くの人が有給の全てを使いきれません。  
この問題には様々な背景があるでしょうが、次の2点は問題でしょう。  

- 労働者が有給を使い切らずとも会社に実質的に懲罰がない
- 有給申請がおっくう。多くの場合、電話やメール、もしくは直接上司に話さなければならない

NEM-KYUでは、Company_NAME：paid-holidayというモザイクを年のはじめに配布します。  
有給を申請する時は、会社のアドレスにモザイクを送るだけです。（会社は独自のアドレス、ネームスペースを持ちます。）  
会社側では、モザイクの着金をトリガーに同僚に通知をするプログラムを走らせるようなことが可能です。  

NEM-KYUはパブリックチェーン上で動くため、誰でもモザイクの移動を確認できます。  
つまり、その会社の有給消化率が可視化されます。これは求職者などにとって非常に有用でしょう。  

さらには、次のような未来的な機能も簡単に実装できます。  
- 有給を同僚のXEMとトレードする。
- 有給の期限が切れた時、会社からXEM建てで払い戻しを受ける。  

NEM-KYUは勤怠管理だけでなく、大地震などの際の緊急連絡にも使えます。  
災害時には、会社はメンバーの安否確認を一刻も早くしなければなりません。  
そのようなケースでも、"Company_NAME:Safe"モザイクを会社のアドレスに送ることで無事を知らせることができます。  
勤怠管理と全く同じ仕組みなので、特定のシステムを使うための新たなトレーニングをする必要はありません。  
もちろん、必要ならばメッセージを追加することが可能です。  
もしも、家族や友人がアドレスを知っていれば、そのアドレスのトランザクションをチェックすることで無事を知ることができます。  
直接メールや電話でやり取りする必要が無いので、ネットワークの混雑を引き起こしにくいです。  

このハッカソンでは、勤怠管理のための基本的な機能を実装しようと思います。  

## NEM Global Hackathonの公式説明
NEM-KYU will allow employees in Japan to track their paid leave days and also request for paid leave days by sending a mosaic to the company address.  

It will also enable futuristic systems that allow people to trade paid-holidays and XEMs with colleages or get XEM refunds for expired holidays from the company.  

NEM-KYU will also allow for workers to keep their employers updated on their safety in times of an emergency.  

## 目標
最低限、きちんと要件を満たして提出すること。  
これを出来ないのならば他の選ばれなかった方に申し訳が立たないです。  
それでいて、完走するだけでも十分な価値、実績になるでしょう。  
私はハッカソンの経験がないので、短期間で開発しきる経験値を詰むことには意味があります。  
またNEMの技術の需要拡大は今後大いに有り得ることであり、それに向けての投資にもなります。  

ブロックチェーン以外の技術的では、Webアプリ開発の実戦経験を増やします。  
今までは得意のRとShinyというコンフォートゾーンから戦っていましたが、ここを抜け出すことも一つの目標です。  
といっても全く触れたことのない技術でやると間に合わないので、ある程度できるpython3を軸に、フレームワークはFlaskというのを使ってみようと思います。  

## スケジュール

### デザイン＆開発 1/10-1/17
まずはどの機能実装してどれは切るかの整理。  
その後Web app開発とNEM APIで苦しむことになるのかな。  

### テスト 1/18-1/25
1/18までに動くものがないと駄目なのかはよくわからないです。  
ただ、現実的にはそこまでに動くものが必要でしょう。  
テストはツイッターとかTelegramとかで呼びかければ協力してくれる人がいるかな？  
お礼はtipnemでできるしお手軽ですね。  

### プロダクト提出 1/26-1/31

- スクショ4枚
- ビデオ(3分迄)
- アプリのインストールファイル
- 450ワード以内の説明文
- Githubへのリンク

ビデオを撮るのが一番大変そうです。  
パワポみたいなスライド＋英語の喋りを入れれば形になるでしょうが、あまりこういう作業をしたことがないので不安要素ではあります。  

## 評価ポイント

### NEM Integration 20%
ネームスペース、アドレス、モザイクが鍵になります。  
マルチシグは絶対応用できるけど今回活用するところまで作り込むのはスコープから外します。  

### User Interface　10%
UI/UXについてはあまり勉強したことがないのでこれを機に少し気を使える用になれればと思います。  

### User Experience 10%
人間工学に基づいて評価されるそうですが、知らないのでここでの加点は当てにできなさそうです。  

### Usefulness 20%
きちんと利用シーンを考えられるかですが、これについては提出段階で固まっています。  

### Compatibility 20%
既存システムとうまく連携できるか。  
既存がどんなものを使っているのかあまり知らないのでその点は不透明ながらも、ブロックチェーン外のプログラムとの連携は当然必要になるのでそこはきれいに作りたいです。  

### Open Source 20%
隠す意味が全く無いので当然オープンソースにします。  

## 進捗管理・タスク管理
Git/Githubは使うとして、考えた内容などはこのページgithub.ioにどんどん書いていこうと思います。

