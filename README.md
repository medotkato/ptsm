# Plain Text Self Management (PTSM)

Система хранения информации, управления задачами и собой на основе простых текстовых файлов - списков, заметок, чек-листов - в формате [Markdown](https://daringfireball.net/projects/markdown/syntax) (.md), обернутых рядом идей Максима Дорофеева из книги ["Путь джедая"](https://www.mann-ivanov-ferber.ru/books/put-dzhedaya/) и моих мыслей (из книги, которой нет):

1) Plain text обеспечивает возможность быстро вносить новые задачи и менять старые, редактировать их в любом текстовом редакторе (VS Code, Sublime, Atom, Typora или даже Блокнот), удобно искать по содержимому всех файлов системы и манипулировать ими с помощью скриптов на python или консольных команд. Markdown используется ванильный или слегка обогащенный GitHub-flavored синтаксисом, а также привычным синтаксисом мессенджеров / систем управления задачами (например, @ для указания на персону).

2) Принципы и техники из "Пути джедая" помогают делать задачи, завершать проекты и меньше париться из-за ерунды.

3) Принципы и техники из моей головы склеивают части PTSM в одно целое [и объясняют, в чем удобство этого добра](notes/Why.md).

## Quick Start

1. Скачать содержимое репозитория PTSM или выполнить в консоли:
   > git clone https://github.com/medotkato/ptsm.git
2. Установить [Visual Studio Code](https://code.visualstudio.com)
3. Запустить VS Code, выбрать File-> Open Folder и указать папку с PTSM
4. Когда VS Code после открытия папки предложит (в правом нижнем углу) установить расширения, нажать **Install All**
5. Выбрать README.md слева в списке файлов и внимательно его прочитать (разделы **"Содержимое"** и **"Рекомендации"** ниже)
6. Переделать все под себя и have fun

Еще можно добавить путь к папке /tools в PATH, тогда будут в любом каталоге работать скрипты сборки из .md в .docx и .pdf (надо настроить пути для складывания выходных файлов и для забора css стилей в [tools/ptsm.ini](tools/ptsm.ini))

Опциональный пункт: написать в [Issues](https://github.com/medotkato/ptsm/issues), что и как можно улучшить

## Содержимое PTSM

> Иногда содержимое PTSM в этом репозитории обновляется, меняется, дополняется.

Основные файлы и папки в [репозитории](https://github.com/medotkato/ptsm):

- /.vscode - конфигурационные файлы для VS Code, которые позволяют в пару кликов получить такое же окружение, как у меня (те же настройки и плагины)
- /notes - папка с системой текстовых файлов
- /tools - папка для скриптов обработки файлов и файла настроек ptsm.ini (см. [/tools/README.md](tools/README.md))
- /out - папка, в которую складывают свои результаты скрипты из /tools
- /licenses - папка для хранения текстов лицензий, под которыми лицензируется содержимое PTSM

- README.md (в каждой из папок) - описание системы (или ее компонента - в зависимости от места хранения) и рекомендации по ведению
- LICENSE.md - файл с коротким описанием того, как все это добро лицензируется (если коротко - открытый copyleft: CC BY-SA & GPLv3)
- CHANGELOG.md - журнал изменений репозитория

В корень также имеет смысл класть файлы, применимые ко всему содержимому системы - например, файлы workspace для текстовых редакторов (VS Code).

Для примера в папках уже лежат какие-то файлы, например, каких-то условных проектов с каким-то условным содержимым, иллюстрирующим идею того или иного компонента системы.

### Основные файлы в /notes

- [Tasks.md](notes/Tasks.md) - перечень задач (которые надо делать)
- [Projects.md](notes/Projects.md) - перечень проектов (над которыми надо думать и откалывать от них задачи в Tasks)
- [Ideas.md](notes/Ideas.md) - перечень идей, на которые надо иногда смотреть и думать, а надо ли вообще с ними что-то делать или сливать в архив / небытие
- [Done.md](notes/Done.md) - сюда переезжают задачи, которые сделаны за день - и копятся год (в конце года содержимое сливается в архив)
- [Inbox.md](notes/Inbox.md) - место размещения входящей информации, которую нужно разбирать на ежедневном/еженедельном обзоре
- [Learn.md](notes/Learn.md) - список ресурсов, статей, которые надо читать для повышения образованности
- [Info.md](notes/Info.md) - место для первичного размещения информации для постоянного хранения (возможно, в будущем агрегатор для /info)
- [Procrastination.md](notes/Procrastination.md) - ссылки на полезные статьи/видео, которые нужно смотреть во время прокрастинации вместо котиков
- [Read_or_Watch.md](notes/Read_or_watch.md) - список книг, которые нужно прочитать, и фильмов, которые нужно посмотреть
- [Someday.md](notes/Someday.md) - список задач или сущностей, которые теряют актуальность и являются кандидатами на удаление на ежемесячном ревью
- [Control.md](notes/Control.md) - список задач и обязательств других людей, результаты которых нужны мне (для контроля и пинга)
- [Why.md](notes/Why.md) - объяснение, как я дошел до жизни такой и почему это кажется мне удобным

### Основные папки в /notes

- /projects и вложенные в нее директории - файлы проектов
- /archive - файлы, потерявшие актуальность, но хранение которых еще имеет смысл
- /checklists - чек-листы на разные случаи жизни
- /etc - все остальное, до чего пока не добралась рука классификации
- /log - папка для хранения файлов дневника (1 день - 1 файл вида YYMMDD_ShortDescription.md)

## Рекомендации

### По системе

1. Не страдать перфекционизмом.

    Главное - просто вести систему, она не обязана быть идеальной в каждую секунду своего существования. Чтобы система приносила пользу, систематичность ее использования должна быть важнее качества ее заполнения. Качество можно подтягивать в свободное время.

    Лучше записать на скорую руку и потом когда-то разобрать, чем не записать вообще. Например, если появляется что-то для еженедельной проработки, запиши это как-то в чек-лист еженедельный и потом, когда до него дойдешь на ревью, тогда и подумаешь, поправишь и перенесешь в нужное место. Когда сделал невнесенную ранее в список задачу - запиши коротко, о чем это было. Подробное описание задачи (в формате "Команда: Проект: Задача", который помогает думать после выполнения задачи) можно будет добить на ежедневном (еженедельном ревью).

2. Использовать для оперативных заметок что-то мобильное с синхронизацией - например, Simplenote на телефоне. В этом случае на ходу в Simplenote пишется идея, а потом при доступе к ноуту открывается десктопный клиент Simplenote и оттуда заметки переезжают в Inbox.md

3. Для записи проектов и задач использовать формат "Команда: Проект" и "Команда: Проект: Задача". Здесь я когда-нибудь напишу об этом подробнее. Но мне так зашло лучше всего (от общего к частному). И сортировать потом удобнее: например, вешаем на кнопку команду Sort Lines Ascending, выделяем пачку задач за день или задач в списке "на потом", жмем эту кнопку и получаем список задач, отсортированный по командам и проектам - сразу видно, над чем мы сегодня трудились больше всего или какие направления у нас наполнены (или недозаполнены) задачами. Скажем, если в списке Upcoming маловато строчек, начинающихся с "Me:" (я сам лично, что-то для меня, родного) или "Family:" (семья и семейные проекты), то это тревожный звоночек - похоже, нас переклинивает в работу (кончится это плохо).

### По технике

1. Использовать Visual Studio Code - он из коробки умеет в такие классные штуки, как быстрый нечеткий поиск по именам файлов (Ctrl+P), содержимому всех файлов проекта (Ctrl+Shift+F), подсветка для Markdown, переход по ссылкам на другие документы системы по Ctrl+click (что крайне удобно для обеспечения связи файлов системы между собой), отображение Outline (автосборка оглавления файла по заголовкам), работа с вкладками и консолью (не выходя из редактора) и кастомизация функционала плагинами. Sublime это тоже все вроде как может, но я его с PTSM не пробовал.

    Для VS Code (это по-умолчанию включено у меня [в настройках проекта](./.vscode/settings.json)) советую:
    - включить автодополнение - так быстрее вводить заметки
    - использовать markdownlint - сначала он дико бесит (как и любой корректор), но потом помогает сделать текст чище (привыкаешь писать валидный md)
    - установить расширения, указанные в [перечне рекомендованных расширений](.vscode/extensions.json) - при открытии VS Code сам предложит это сделать на основе данного списка (либо можно зайти в Extension и, нажав на кнопку "...", выбрать ‘Show recommended extensions’)

    Плагины, которые я сам использую:
    - Markdown All in One (переходы по внутренним ссылкам, синтаксис жирного выделения по Ctrl+b и т.д.)
    - Markdownlint (линтер для корректного и красивого md)
    - Replace Rules (чтобы создавать правила замены на основе регулярных выражений и вешать их на сочетания клавиш (в моем случае - ctrl+d для смены минуса на плюс в начале строки у задачи ("не выполненная" на "выполненная")).
    - Simple New File (для создания нового файла из command palette с автодополнением пути)

2. Установить [Pandoc](https://pandoc.org) - это консольная утилита, которая позволяет форматировать одни документы в другие, например, .md в .docx. На нее завязан скрипт [/tools/md2docx.bat](./tools/md2docx.bat), который конвертирует заданный .md файл в вордовский документ со всем нужным форматированием (заголовками). Мне такое часто нужно - например, для оформления статей, документации и аналитических материалов (не все коллеги готовы потреблять чистый .md).

3. Внести путь к папке /tools в системную переменную PATH (чтобы запускать лежащие там скрипты без указания полного пути к ним).

4. Для обеспечения бэкапа и возможности работы с PTSM из разных мест синхронизировать папку системы с облачным хранилищем: OneDrive, Dropbox, Box, Яндекс.Диск, MEGA и т.д. Для обеспечения двойного резервирования, можно еще и на github коммитить изменения (например, скриптом)

May the Force be with you, друг.
