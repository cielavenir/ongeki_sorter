本ツールはongeki/maimaiの新曲枠には対応しておりません.リポジトリはそのうちarchiveします.

----

# ongeki_sorter

- オンゲキのスコアから単曲レートを算出し、高い順に並び替えて表示します。
- Google Spreadsheetに貼り付けることで https://docs.google.com/spreadsheets/d/17EHX57cQ_nE9euPWj-5yRjMIaEABvCzizbU0lzmnKCc/edit?usp=sharing のような表が作れます。

## 制限
- 正直、急造です。ちゃんとしたツールにする予定が取れない状態です。~~だれか作るまでのつなぎと考えていただければ--;~~
- ongeki_parse_csv.rbの実行にはRubyが必要です。OSXでは標準で入っています。2.0で動作確認、1.9以降なら動くはずです。
- AA(90万点)行っていない譜面については算出されるレートがずれる可能性があります。

## 譜面定数表

- ongeki_constants.csv になります。譜面定数が不明なものは.0か.7にしてあります。
- 作成方法は公開としておりません。twitter @cielavenirにDMくだされば返信する **かもしれません** 。

## スコア表

- https://www.ginjake.net/ongeki/readme のブックマークレット
    - ~~https://github.com/cielavenir/ongeki_score/blob/update_bookmarklet/public/js/ongeki_score.js~~
- 実行するとcsvが得られます。
- オンゲキPLUSではmusic idが数値でなくなったため、ginjake.netにはアップロードできなくなっていますが、ongeki_parse_csvでは問題なく解釈できます。
- ginjake.netの説明書にも記載がありますが、 **有料コース加入が必要です。ただし、OngekiScoreLogと異なりプレミアムコースは不要です。スタンダードコースで問題ありません。**

## レート表

- `ongeki_parse_csv.rb (得られたcsv) > sorted.txt`
- と実行してください。その後sorted.txtをGoogle Spreadsheetに貼り付け(るかExcelで開くかし)てください。
- なお、小数点でなく100倍した整数が表示されるのは、貼り付けたときにバグりうるのを防ぐためですので、現状は仕様ということにさせてください…
- 表サンプル：https://docs.google.com/spreadsheets/d/17EHX57cQ_nE9euPWj-5yRjMIaEABvCzizbU0lzmnKCc/edit?usp=sharing

# chunithm_sorter
- https://www.ginjake.net/score/tyunistar.php のブックマークレットを実行するとcsvが得られます。
- あとはオンゲキと同様です。
- 表サンプル：https://docs.google.com/spreadsheets/d/1DHLLLaa2odajD5cNmvkpVZBEgVVE2vlrzwsO-fAjhZ0/edit?usp=sharing

# maimai_sorter
- https://docs.google.com/spreadsheets/d/1EcodNpPUgAtNFboMd1l-8fo9TJRYsbx8Ho-vVJV-5Fs/edit?usp=sharing
- に表のサンプルがありますが、単曲レート値計算プログラムは現状非公開です(それに…定数未入力なのでぶれぶれですから、いりませんよね)。
- なお計算式はchunithm/ongekiとそれなりに異なっています。
