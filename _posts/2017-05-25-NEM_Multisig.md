---
title: NEMのWalletと二段階認証、MultiSigについて
keywords: NEM XEM cryptocurrency MultiSig
tags: [NEM]
sidebar: base_sidebar
permalink: NEM_MultiSig.html
---

NanoWalletを使っていて、二段階認証ってないのかな？と疑問に思って調べてみた。  
結論から言うと、いわゆる普通の二段階認証はない。マルチシグを使えば似たようなことができる。  

[Why no 2FA option on the nano wallet?](https://www.reddit.com/r/nem/comments/6amxdn/why_no_2fa_option_on_the_nano_wallet/)


このサイトの質問がまさに私の疑問で、解答としてMultiSigを使えばいいよということが書いてある。  
これを読めばもう長々と語ることはないのだが、できるだけ周辺知識も含めて日本語でまとめよう。  

### MultiSigって何？
MultiSigについては、日本語だとこのサイトがわかりやすいと思う。  
[Multisig(マルチシグ)って何？](http://coinandpeace.hatenablog.com/entry/what_is_multisig)

特徴としては  
- 秘密鍵がひとつではなく複数に分割される。
- 複数の鍵の署名が揃うとトランザクションが発行される。つまり、送金できる。
- 2-of-3に分割した場合、3つのうち2つの鍵の署名があればいい。（この数字の関係は調整可能）

この仕組みを使えば、複数の鍵の内ひとつが流出したとしても、残りの鍵をきちんと守れればトランザクションを発行できず、不正送金はできない。  
もちろん多くの鍵をとられればアウトだが、非常に困難だしそのような状況で守るのはそもそも難しい。  

### NEMチュートリアルのMultiSigのページを読む
[NanoWallet Guide](https://blog.nem.io/nanowallet-tutorial/)

5.1にMultiSigについて記載がある。そんなに長い文章ではないので、そのまま転載すると

>The more advanced and most secure way of securing your funds is multi-signature. NEM's current implementation of multisig is "M-of-N", meaning M can be any number equal to or less than N, i.e., 1-of-4, 2-of-3, 4-of-9, 11-of-12 and so on. NEM also allows "N-of-N" accounts, i.e., 1-of-1, 2-of-2, 5-of-5, 10-of-10 and so on.
NEM's multisig is supported by all NEM wallets including NCC, Android, iOS, Nano, and NEMpay. Multisig accounts are as easy to set up as a few clicks and even have push notifications sent to your mobile or desktop wallet notifying you to sign.
If you are interested in multi-signature accounts, you can read more about it here. And you can watch a series of demo videos here.

M-of-NとN-of-Nの2つの実装があるようだ。  
M-of-Nは、N個の鍵のうちM個の署名があればトランザクションが発行可能、  
N-of-Nは、N個の鍵のうちすべての署名が必要。
多少の操作は必要だが、いろいろなウォレット（NCC, Android, iOS, Nano, and NEMpay）で使える。

### どうやって運用する？
[NEM MobileWalletによるマルチシグの実行方法](http://www.ocknamo.com/entry/2016/11/11/040226)


上記サイトにMobileWalletのマルチシグについて記載がある。  

NanoWalletについては、サービスから各種設定ができる。  

実際の運用では、
- NanoWallet
メインのアカウント。マルチシグアカウントにはしない。  
マルチシグネチャを設定、下記2つの公開鍵を設定し、2-of-3でトランザクションを発行できるようにする。
- MobileWallet
マルチシグアカウント。スマホで、二段階認証アプリのような役割を果たす。
- NanoWallet(2)
マルチシグアカウント。上記のNanoWalletとは別の安全なストレージに保存しておく。  
2-of-2だと、スマホを盗られたりなくした時詰むのでバックアップ用として想定。

それぞれのウォレットに少量のXEMを送ったり（全くないと不便なので）、マルチシグ宣言するのにもXEMが必要だったりと、塵も積もれば山となる形式でそこそこの量のXEMが必要。  
現在、XEMの送金手数料が割高に感じるのと、メインウォレットにそこまでの堅牢性を求めていないとの理由から上記構成は試していない。  
自分としては手数料は今後安くなるような方策が取られるんじゃないかと踏んでいるので、その際に試してみたいと思う。  
（というわけで上の構成の確認はしていないので、間違いがあれば修正します。Twitterアカウントを今後作る予定なのでそこから教えていただければ。）
