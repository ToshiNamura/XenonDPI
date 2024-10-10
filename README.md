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
Перед удалением нужно сделать одно из двух действий ниже:
1. Запустите ``` XenonDPI_service_remove.cmd ```.
2. Введите в терминале: ``` sc stop "WinDivert" ``` и ``` sc delete "WinDivert" ```
+  Это нужно для завершения службы ``` WinDivert ```, иначе система не даст вам удалить файл ``` WinDivert64.sys ```.

## WinDivert
[WinDivert](https://reqrypt.org/windivert.html) - Это библиотека для доступа к драйверам сети на Windows, состоящяя из двух файлов:
```
WinDivert.dll
WinDivert64.sys
```
[WinDivert](https://reqrypt.org/windivert.html) использует [zapret](https://github.com/bol-van/zapret) для создания фильтров сети, благодоря которым вы можете обходить блокировку.
Поддержите разработчиков [WinDivert](https://reqrypt.org/windivert.html) и [zapret](https://github.com/bol-van/zapret).
Именно благодоря их труду, мы можем пользоватся интернетом без ограничений.

## Additionally
Если данный фикс вам не помог, то, это не удивительно. Программы [zapret](https://github.com/bol-van/zapret) это не понацея,
способы блокировок варьируются от провайдера к провайдеру, от региона к региону. Вам придется подобрать настройки [zapret](https://github.com/bol-van/zapret) для своего случая,
Более подробно как это делается описано в следующих ресурсах:
+ [zapret/docs/readme.txt](https://github.com/bol-van/zapret/blob/master/docs/readme.txt)
+ [zapret/docs/windows.txt](https://github.com/bol-van/zapret/blob/master/docs/windows.txt)
+ [zapret/docs/quick_start_windows.txt](https://github.com/bol-van/zapret/blob/master/docs/quick_start_windows.txt)

## LICENSE's
### [zapret LICENSE](https://github.com/bol-van/zapret/blob/master/docs/LICENSE.txt)
MIT License

Copyright (c) 2016-2021 bol-van

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

### [WinDivert LICENSE](https://github.com/basil00/WinDivert/blob/master/LICENSE)
WinDivert is dual-licensed under your choice of the GNU Lesser General Public
License (LGPL) Version 3 or the GNU General Public License (GPL) Version 2.
Copies of the LGPLv3, GPLv3 and GPLv2 are provided below.

GNU LESSER GENERAL PUBLIC LICENSE
Version 3, 29 June 2007

Copyright (C) 2007 Free Software Foundation,
Inc. <https://fsf.org/>Everyone is permitted to copy and distribute verbatim copies
of this license document, but changing it is not allowed.

This version of the GNU Lesser General Public License incorporates
the terms and conditions of version 3 of the GNU General Public
License, supplemented by the additional permissions listed below.
