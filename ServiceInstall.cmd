@ECHO OFF
@chcp 65001

set BIN=%~dp0bin\
set CFG=%~dp0cfg\

@echo Этот скрипт должен запускаться с правами администратора.
@echo Щелкните правой кнопкой мыши - запуск от имени администратора.
@echo Нажмите любую клавишу, если вы запускаете программу от имени администратора.

pause
sc stop "Zapret"
sc delete "Zapret"
sc stop "WinDivert"
sc delete "WinDivert"

sc create "Zapret" binPath= "\"%BIN%winws.exe\" --wf-tcp=80-65535 --wf-udp=443-65535 --filter-udp=443 --hostlist=\"%CFG%GoodbyeDPI.txt\" --dpi-desync=fake --dpi-desync-repeats=11 --dpi-desync-fake-quic=\"%BIN%quic_initial_www_google_com.bin\" --new --filter-tcp=443 --hostlist=\"%CFG%GoodbyeDPI.txt\" --dpi-desync=fake,split2 --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --dpi-desync-fake-tls=\"%BIN%tls_clienthello_www_google_com.bin\" --new --filter-udp=443 --hostlist=\"%CFG%list-discord.txt\" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic=\"%BIN%quic_initial_www_google_com.bin\" --new --filter-udp=50000-65535 --ipset=\"%CFG%ipset-discord.txt\" --dpi-desync=fake --dpi-desync-any-protocol --dpi-desync-cutoff=d3 --dpi-desync-repeats=6 --new --filter-tcp=443 --hostlist=\"%CFG%list-discord.txt\" --dpi-desync=fake,split --dpi-desync-autottl=2 --dpi-desync-repeats=6 --dpi-desync-fooling=badseq --dpi-desync-fake-tls=\"%BIN%tls_clienthello_www_google_com.bin\"" start= "auto"
sc description "Zapret" "Passive Deep Packet Inspection blocker and Active DPI circumvention utility"
sc start "Zapret"

pause