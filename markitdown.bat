@echo off

REM �����̃`�F�b�N
if "%~1"=="" (
    echo �g�p�@: markitdown.bat ���̓t�@�C�� [�o�̓t�@�C��]
    pause
    exit /b
)

REM ���������擾�i���̓t�@�C�����j
set "input_file=%~1"

REM ���������擾�i�o�̓t�@�C�����j
if "%~2"=="" (
    set "output_file=%~1.md"
) else (
    set "output_file=%~2"
)

REM Python �X�N���v�g�̎��s
python -W ignore::RuntimeWarning -c ^
"import sys; ^
from markitdown import MarkItDown; ^
markitdown = MarkItDown(); ^
result = markitdown.convert(sys.argv[1]); ^
f = open(sys.argv[2], 'w', encoding='utf-8'); ^
f.write(result.text_content); ^
f.close()" "%input_file%" "%output_file%"
