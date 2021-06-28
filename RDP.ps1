Set-NetFirewallProfile -All -Enabled True # включение FireWall
# Изменение правила, добавление IP для доступа
Get-NetFirewallrule -DisplayName 'Удаленный рабочий стол — пользовательский режим (входящий трафик TCP)'|Set-NetFirewallRule -RemoteAddress "192.168.0.1","192.168.0.97"