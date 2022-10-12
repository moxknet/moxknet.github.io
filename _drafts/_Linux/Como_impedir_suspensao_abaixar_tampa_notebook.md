 ---
 title: Como impedir suspensão ao abaixar a tampa de notebook (pelo terminal)
 ---
 
 Transformei um netbook antigo num servidor Debian e toda vez que abaixo a tampa para desligar a tela ele entra em suspensão. Como evitar isso?
 
 É muito simples, basta apenas editar o arquivo ```/etc/systemd/logind.conf``` alterando o parâmetro:
 
 ```
 HandleLidSwitch=ignore
 ```
 
 Pode ser necessário atualizar o sistema para que a mudança seja incorporada.
 
 ```
 systemctl restart systemd-logind
 ```
 
 Pronto, é isto.
 
 Referência: <https://unix.stackexchange.com/questions/52643/how-to-disable-auto-suspend-when-i-close-laptop-lid>
