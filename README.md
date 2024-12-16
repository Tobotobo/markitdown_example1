# markitdown_example1

## 概要
* MarkItDown を試してみる

GitHub - MarkItDown  
https://github.com/microsoft/markitdown  

窓の杜 - Microsoftによる“なんでもMarkdownにしてくれるライブラリ”が話題、手軽なWebアプリもさっそく登場  
https://forest.watch.impress.co.jp/docs/serial/yajiuma/1647731.html  

## 留意事項
* Excel は全て表に変換されます。
* Excel 方眼紙で作ったドキュメントも表に変換されます。（＝期待した見た目にならない）  
  * Excel を PDF で保存してから変換しても、表にこそなりませんが項番と項目が泣き別れたり期待した状態になりません。
  * そもそも Excel 方眼紙が本来の使い方じゃないですね。知ってました。。。

## 環境
* Windows 10 x64
* Python 3.11.7
* pip 24.0 

## 詳細

### MarkItDown のインストール
```
pip install markitdown
```

### テスト実行

```
python -W ignore::RuntimeWarning test.py
```
※実行時に警告 `RuntimeWarning: Couldn't find ffmpeg or avconv` が出力される  
　以下のイシューに上がっている。プルリクが出ているのでいずれ解消すると思われる。今は対象の警告の非表示で対処。  
　ImportError: "RuntimeWarning: Couldn't find ffmpeg or avconv - defaulting to ffmpeg, but may not work"    
　https://github.com/microsoft/markitdown/issues/21  

※test.xlsx  
  https://github.com/microsoft/markitdown/blob/main/tests/test_files/test.xlsx  
　https://github.com/microsoft/markitdown?tab=MIT-1-ov-file#readme  

実行結果
```
> python -W ignore::RuntimeWarning test.py
## Sheet1
| Alpha | Beta | Gamma | Delta |
| --- | --- | --- | --- |
| 89 | 82 | 100 | 12 |
| 76 | 89 | 33 | 42 |
| 60 | 84 | 19 | 19 |
| 7 | 69 | 10 | 17 |
| 87 | 89 | 86 | 54 |
| 23 | 4 | 89 | 25 |
| 70 | 84 | 62 | 59 |
| 83 | 37 | 43 | 21 |
| 71 | 15 | 88 | 32 |
| 20 | 62 | 20 | 67 |
| 67 | 18 | 15 | 48 |
| 42 | 5 | 15 | 67 |
| 58 | 6ff4173b-42a5-4784-9b19-f49caff4d93d | 22 | 9 |
| 49 | 93 | 6 | 38 |
| 82 | 28 | 1 | 39 |
| 95 | 55 | 18 | 82 |
| 50 | 46 | 98 | 86 |
| 31 | 46 | 47 | 82 |
| 40 | 65 | 19 | 31 |
| 95 | 65 | 29 | 62 |
| 68 | 57 | 34 | 54 |
| 96 | 66 | 63 | 14 |
| 87 | 93 | 95 | 80 |

## 09060124-b5e7-4717-9d07-3c046eb
| ColA | ColB | ColC | ColD |
| --- | --- | --- | --- |
| 1 | 2 | 3 | 4 |
| 5 | 6 | 7 | 8 |
| 9 | 10 | 11 | 12 |
| 13 | 14 | 15 | affc7dad-52dc-4b98-9b5d-51e65d8a8ad0 |
```

## Sheet1
| Alpha | Beta | Gamma | Delta |
| --- | --- | --- | --- |       
| 89 | 82 | 100 | 12 |
| 76 | 89 | 33 | 42 |
| 60 | 84 | 19 | 19 |
| 7 | 69 | 10 | 17 |
| 87 | 89 | 86 | 54 |
| 23 | 4 | 89 | 25 |
| 70 | 84 | 62 | 59 |
| 83 | 37 | 43 | 21 |
| 71 | 15 | 88 | 32 |
| 20 | 62 | 20 | 67 |
| 67 | 18 | 15 | 48 |
| 42 | 5 | 15 | 67 |
| 58 | 6ff4173b-42a5-4784-9b19-f49caff4d93d | 22 | 9 |
| 49 | 93 | 6 | 38 |
| 82 | 28 | 1 | 39 |
| 95 | 55 | 18 | 82 |
| 50 | 46 | 98 | 86 |
| 31 | 46 | 47 | 82 |
| 40 | 65 | 19 | 31 |
| 95 | 65 | 29 | 62 |
| 68 | 57 | 34 | 54 |
| 96 | 66 | 63 | 14 |
| 87 | 93 | 95 | 80 |

## 09060124-b5e7-4717-9d07-3c046eb
| ColA | ColB | ColC | ColD |
| --- | --- | --- | --- |
| 1 | 2 | 3 | 4 |
| 5 | 6 | 7 | 8 |
| 9 | 10 | 11 | 12 |
| 13 | 14 | 15 | affc7dad-52dc-4b98-9b5d-51e65d8a8ad0 |

## `markitdown.bat` の使い方

### 使い方①
`markitdown.bat` に変換したいファイルをドラッグ & ドロップする。  
変換したいファイルと同じフォルダに、`変換したいファイルのファイル名` + `.md` のファイル名で出力される。 

### 使い方②
コマンドプロンプトなどでコンソールから実行する。
```
markitdown.bat 入力ファイル [出力ファイル]
```