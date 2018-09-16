# ongeki_sorter

- オンゲキのスコアから単曲レートを算出し、高い順に並び替えて表示します。
- Google Spreadsheetに貼り付けることで https://docs.google.com/spreadsheets/d/17EHX57cQ_nE9euPWj-5yRjMIaEABvCzizbU0lzmnKCc/edit?usp=sharing のような表が作れます。

## 制限
- 正直、急造です。ちゃんとしたツールにする予定が取れない状態です。だれか作るまでのつなぎと考えていただければ--;
- `parse_csv.rbの実行にはRubyが必要です。OSXでは標準で入っています。2.0で動作確認、1.9以降なら動くはずです。
- AA(90万点)行っていない譜面については算出されるレートがずれる可能性があります。

## 譜面定数表

- constants.csv になります。譜面定数が不明なものは.0か.7にしてあります。
- 作成方法は公開としておりません。twitter @cielavenirにDMくだされば返信する **かもしれません** 。

## スコア表

- https://www.ginjake.net/ongeki/readme のブックマークレット
    - と言いたいところですが、一部取得漏れがあるので、当面は修正版 https://github.com/cielavenir/ongeki_score/blob/update_bookmarklet/public/js/ongeki_score.js をデベロッパーツールに貼り付けてください。
    - 右クリックができないようですので、ブラウザのメニューから開いてください。
- 実行するとcsvが得られます。

## レート表

- `parse_csv.rb (得られたcsv) > sorted.txt`
- と実行してください。その後sorted.txtをGoogle Spreadsheetに貼り付け(るかExcelで開くかし)てください。
