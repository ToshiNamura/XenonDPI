# XenonDPI
Patch for bol-van/zapret (Discord fix)

--------------------------------------
## Description
Патч для [zapret](https://github.com/bol-van/zapret) репозитория под Windows.
Фикс Discord, Youtube, и других блокировок от ркн.
+ ``` XenonDPI.cmd ``` - Bat скрипт для winws.exe, создает фильтрацию пакетов для обхода.
+ ``` XenonDPI.txt ``` - Сборник DNS Хостов для http/tcp, https/tcp и udp протоколов соотведственно.
+ ``` XenonDPI_service_install.cmd ``` - запуск XenonDPI.cmd в виде службы виндовс. (Запускать от имени Администратора.)
+ ``` XenonDPI_service_remove.cmd ``` - удаление службы виндовс. (Запускать от имени Администратора.)

## Installation
1. Перейти в [репозиторий zapret к файлу quick_start_windows.txt](https://github.com/bol-van/zapret/blob/master/docs/quick_start_windows.txt) от туда надо скачать архив [master.zip](https://github.com/bol-van/zapret-win-bundle/archive/refs/heads/master.zip).
2. Скачайте данный репозиторий в виде архива [master.zip](https://github.com/ToshiNamura/XenonDPI/archive/refs/heads/master.zip).
3. Распакуйте ``` zapret-win-bundle-master.zip ``` в любое удобное для вас место.
4. Откройте папку ``` zapret-winws ``` и перекиньте в неё ``` .txt ``` и ``` .cmd ``` файлы ``` XenonDPI ``` из архива ``` XenonDPI-main.zip ```.
5. Запускаете ``` XenonDPI.cmd ``` и вуаля, всё должно работать.
5.1 Если хотите, что-бы програма запускалась при загрузке виндов в фоновом режиме, то запустите ``` XenonDPI_service_install.cmd ``` от имени Администратора.

## Removal
Перед удаление програм ``` zapret ``` запустите ``` XenonDPI_service_remove.cmd ``` или введите в терминале: ``` sc stop "WinDivert" ``` и ``` sc delete "WinDivert" ```, иначе папка с програмой не удалится.
Это происходит из за библиотеки: [WinDivert](https://reqrypt.org/windivert.html).
В частности из за друх файлов: ``` WinDivert.dll ``` ``` WinDivert64.sys ```, которые автоматичести запускаются в виде службы виндовс.
