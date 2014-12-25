# AWS麻雀牌イメージ for まうじゃん by @cloneko

## これは何?

[AWS麻雀牌の作り方 - カタヤマンがプログラマチックに今日もコードアシスト](http://c9katayama.hatenablog.com/entry/2014/12/15/002712)で配布されているAWS麻雀牌のイメージをまうじゃん用に変換したものです。

## 使い方

適当なツールで展開してください。

### グラフィックの変更のしかた

ゲーム開始時に設定するところで、「グラフィック」タブから定義ファイルを指定してください。

もしくはオプション → グラフィック定義 から変更することができます。

## 変換用スクリプト

雑に作ってあるコードなのでアレですが、一応一緒に置いておきます。

要ImageMagick(convert/mogrify)

### 使い方

1. [AWS麻雀アイコンセット](http://aws-cloud.s3.amazonaws.com/mahjong/icon.zip)をダウンロードし、展開します。
2. 展開したディレクトリにawsmaujan.shを移動します。
3. 展開したディレクトリで./awsmaujan.shを実行
4. /tmpにaws_bx.bmp aws_by.bmp aws_sx.bmp aws_sy.bmpが生成されるので、同梱の「aws.gsf」と同じディレクトリに置いてください。


### 動作検証環境

* まうじゃん 1.023 + Wine 1.6.2 on Linux mint 17

### ライセンス?

* awsmaujan.shはパブリックドメインとします。
