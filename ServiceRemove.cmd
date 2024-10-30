@ECHO OFF
@chcp 65001

@echo Этот скрипт должен запускаться с правами администратора.
@echo Щелкните правой кнопкой мыши - запуск от имени администратора.
@echo Нажмите любую клавишу, если вы запускаете программу от имени администратора.

pause
sc stop "Zapret"
sc delete "Zapret"
sc stop "WinDivert"
sc delete "WinDivert"

pause