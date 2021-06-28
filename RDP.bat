rem Включение firewall
netsh advfirewall set allprofiles state on
rem Изменение правила по названию
netsh advfirewall firewall add rule name="RDP" dir=in action=allow protocol=TCP localport=3389 remote="192.168.0.1,192.168.0.97"
rem netsh advfirewall firewall set rule group="remote desktop" new remoteip="192.168.0.1,192.168.0.97"

