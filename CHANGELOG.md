# Changelog

Здесь описаны все важные изменения проекта. Формат лога основан на [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [Unreleased]


## [1.2] - 2021-09-02

- поправил форматирование консольной команды "git clone ..." в README.md с "цитата" на "код"
- в me.workspace добавил "workbench.editorAssociations": [{"viewType": "default", "filenamePattern": "*.md"}], -- чтобы расширение office viewer не переопределило свой редактор для .md (см. details этого расширения)
- все батнички переделаны в .cmd (заодно больше не нужен chcp 65001)
- в расширения добавлены:
  - "skn0tt.markdown-link-expander" // ctrl+alt+u to get the header from the page's url
  - "tchayen.markdown-links" // to see the big picture with links between notes (graph)
  - "johnpapa.read-time" // to quickly see the read time for your .md/txt file
- pdf.bat теперь md2pdf.cmd
- перенес все настройки + рекомендуемые расширения в ptsm.code-workspace
- перенес в корень файл keybindings.json, т.к. избавился от папки .vscode, а содержимое этого файла все равно нужно копировать в пользовательские настройки на машине
- добавил папку zettelkasten (опишу, как с ней работать потом)
- добавил скрипт синхронизации с гит репозиторием


## [1.1] - 2020-07-16

### Added

- скрипт [/tools/sync.bat](tools/sync.bat), который использует robocopy для бэкапа в gitrep и потом git commit / push
- скрипт [/tools/md2docx.bat](tools/md2docx.bat) для сборки .docx из .md (в текущем каталоге)
- скрипт [/tools/pdf.bat](tools/pdf.bat), который использует pandoc для сборки pdf с оглавлением из .md (в текущем каталоге) и .css, размещенного в \[csspath\]
- папку **/out_no_git** для всех выводных документов, чтобы ими не гадить в гит-репозиторий для бэкапа системы
- в скриптах: команда move для переброски выводного документа (docx/pdf) в папку \[outpath\](задается в ptsm.ini)
- скрипт [/tools/css.css](tools/css.css), который содержит стили для сборки pdf в pdf.bat
- скрипт [/tools/ptsm.ini](tools/ptsm.ini), который содержит настройки для работы скриптов (сейчас - пути к файлам css и выходная папка out_no_git)
- скрипт [/tools/ini.bat](tools/ini.bat) для парсинга ini файлов за авторством [rojo со stackoverflow](https://stackoverflow.com/questions/2866117/windows-batch-script-to-read-an-ini-file)
- **/tools/README.md** для описания содержимого папки со скриптами

### Changed

- актуализировал основной README.md + дописал про сочетание Ctrl+P для поиска по именам файлов (названиям заметок, по сути)

## [1.0.1] - 2020-03-25

### Added

- [файл с настройками пары горячих клавиш](.vscode/keybindings.json) для быстрого старта.
- Changelog.md в корне проекта

### Changed
- Golden Path, как наиболее важный раздел Read_or_watch, переехал в начало файла (да так и работать с ним удобнее).

## [1.0.0] - 2019-02-09

### Added

- весь объем проекта PTSM - см. [README.md](README.md)
