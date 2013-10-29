「まおゆう」と「ログホライズン」をkindle化
==========================================

環境はFedora19。


まおゆう
--------

元ネタはこちら。

http://sho.tdiary.net/20101221.html#p01

何も考えずに動きました。


ログホライズン
--------------

元ネタはこちら。

http://www.lifetips.me/?p=263
https://gist.github.com/1056102

ruby1.8系のソースなので、ruby2.0系で動かすには一部修正が必要でした。
具体的には、15行目のeachをeach_lineに変更。

----

どちらも、参照元の記事ではPDF化してますが、
最近のkindleで読むためには、PDFにするよりはepub3経由でmobiにしたほうが良さそう。
改ページの方向が逆だし。
AozoraEpub3がJavaで動くようなので、これを使ってまずepub3に変換。

http://www18.atwiki.jp/hmdev/pages/21.html

で、さいごにkindlegenでmobiに変換。
