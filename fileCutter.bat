@echo off
setlocal enabledelayedexpansion

:: CSVファイルのパスを指定
set "csv_file=cut_time.csv"

:: CSVファイルを一行ずつ処理
for /f "tokens=1,2,3 delims=," %%A in (%csv_file%) do (
    set "filename=%%A"
    set "start_time=%%B"
    set "end_time=%%C"

    :: 小数点以下を除いた開始時間を取得
    set "start_time_no_decimal=!start_time:.=-!"
    set "start_time=!start_time: =!"
    set "end_time=!end_time: =!"

    :: 出力ファイル名を生成（例：yubi_605_565.raw）
    set "basename=!filename:.raw=!"
    set "output_file=!basename!_!start_time_no_decimal!.raw!"

    :: metavision_file_cutterコマンドを実行
    metavision_file_cutter -i "!filename!" -s "!start_time!" -e "!end_time!" -o "!output_file!" > output.log 2>&1

    echo Processed !filename! from !start_time! to !end_time!, output to !output_file!
)

endlocal