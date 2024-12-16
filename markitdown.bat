@echo off

REM 引数のチェック
if "%~1"=="" (
    echo 使用法: markitdown.bat 入力ファイル [出力ファイル]
    pause
    exit /b
)

REM 第一引数を取得（入力ファイル名）
set "input_file=%~1"

REM 第二引数を取得（出力ファイル名）
if "%~2"=="" (
    set "output_file=%~1.md"
) else (
    set "output_file=%~2"
)

REM Python スクリプトの実行
python -W ignore::RuntimeWarning -c ^
"import sys; ^
from markitdown import MarkItDown; ^
markitdown = MarkItDown(); ^
result = markitdown.convert(sys.argv[1]); ^
f = open(sys.argv[2], 'w', encoding='utf-8'); ^
f.write(result.text_content); ^
f.close()" "%input_file%" "%output_file%"
