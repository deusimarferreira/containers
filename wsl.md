# Subsistema Windows para Linux (Windows Subsystem for Linux)
A versão 2 do WSL, apresenta problemas de comunicação de rede quando usando VPN's gerando um impacto nas atividades diárias dos desenvolvedores.

Para solucionar esse problema recomendamos utilizar ``wsl-vpnkit`` disponível no GitHub https://github.com/sakai135/wsl-vpnkit.

# Rancher Desktop
Para Rancher Desktop basta instalar a distribuição ``wsl-vpnkit`` no wsl e realizar o star.

~~~sh
Get-NetAdapter -InterfaceDescription "Cisco AnyConnect*" | Get-DnsClientServerAddress | Select -ExpandProperty ServerAddresses

netsh interface portproxy add v4tov4 listenport=8080 listenaddress=0.0.0.0 connectport=8080 connectaddress=10.4.1.197

netsh interface portproxy delete v4tov4 listenport=8080 listenaddress=0.0.0.0
~~~~

# Docker 
Já no docker a solução apresentada acima não foi suficiente, para isso será necessário uma abordagem diferente.

# Referência
(Issue 1350)[https://github.com/microsoft/WSL/issues/1350]
[Install Docker on WSL 2 with VPN Support to replace Docker for Windows](https://medium.com/twodigits/install-docker-on-wsl-2-with-vpn-support-to-replace-docker-for-windows-45b8e200e171)
[Fixes problemas com iptables](https://patrickwu.space/2021/03/09/wsl-solution-to-native-docker-daemon-not-starting/)
[Idenitifcar WIndows Profile](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7.3)
(Split VPN in WSL (Windows Subsystem for Linux))[https://askubuntu.com/questions/1228568/split-vpn-in-wsl-windows-subsystem-for-linux]
(WSL Config)[https://learn.microsoft.com/en-us/windows/wsl/wsl-config#wslconfig]
