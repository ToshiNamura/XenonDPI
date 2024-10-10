@ECHO OFF
PUSHD "%~dp0"

echo This script should be run with administrator privileges.
echo Right click - run as administrator.
echo Press any key if you're running it as administrator.
pause
sc stop "XenonDPI"
sc delete "XenonDPI"
sc create "XenonDPI" binPath= "\"%~dp0winws.exe\" --wf-tcp=80-65535 --wf-udp=443-65535 --filter-udp=443 --hostlist=\"%~dp0XenonDPI.txt\" --dpi-desync=fake --dpi-desync-repeats=11 --dpi-desync-fake-quic=\"%~dp0quic_initial_www_google_com.bin\" --new --filter-udp=443 --dpi-desync=fake --dpi-desync-repeats=11 --new --filter-tcp=80 --dpi-desync=fake,split2 --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --new --filter-tcp=443 --hostlist=\"%~dp0XenonDPI.txt\" --dpi-desync=fake,split2 --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --dpi-desync-fake-tls=\"%~dp0tls_clienthello_www_google_com.bin\" --new --filter-udp=443 --dpi-desync=fake --dpi-desync-udplen-increment=10 --dpi-desync-repeats=6 --dpi-desync-udplen-pattern=0xDEADBEEF --dpi-desync-fake-quic=\"%~dp0quic_initial_www_google_com.bin\" --new --filter-udp=50000-65535 --dpi-desync=fake,tamper --dpi-desync-any-protocol --dpi-desync-fake-quic=\"%~dp0quic_initial_www_google_com.bin\" --new --filter-tcp=443 --dpi-desync=fake,split2 --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --dpi-desync-fake-tls=\"%~dp0tls_clienthello_www_google_com.bin\"" start= "auto"
sc description "XenonDPI" "Passive Deep Packet Inspection blocker and Active DPI circumvention utility"
sc start "XenonDPI"

POPD
pause
