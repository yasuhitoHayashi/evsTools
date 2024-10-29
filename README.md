# evsTools

evsデータを扱う際に作ったちょっとしたスクリプトを乗っけていいきます。

## fileCutter
metavision SDKのfile cutterに、ファイル名と時間を与えてカットさせるwindows環境用のバッチファイルです。
1. cut_time.csvの例に従い、ファイル名、開始時間(s)、終了時間(s)を入力したファイルを用意します。
2. cut_time.csvの名前を変えた場合は、fileCutter.batの14行目を修正してください。
3. fileCutter.batを、対象とするrawファイル群とcut_time.csvファイルがあるディレクトリで実行すると、各rawファイルから指定された時間分のイベントデータが切り出された複数のファイルが生成されます。
