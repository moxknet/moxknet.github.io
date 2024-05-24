--- 
title: Como montar um disco no Linux pelo terminal
---

O primeiro passo é encontrar o identificador da partição que você deseja montar:

```
sudo parted -l 
```

No meu caso o disco está em `dev/sdb` e no número `1`. Mas antes de montar é necessário criar um diretório onde a montagem sera feita. Eu aconselho montar sempre em `/media` pois é o caminho padrão do sistema.

```
sudo mkdir /media/pasta_para_montar
```

Agora basta executar o comando para montar o disco no diretório escolhido:

```
sudo mount /dev/sdb1 /media/pasta_para_montar/
```

Para desmontar basta executar `sudo umount /media/pasta_para_montar` ou `sudo umount /dev/sdb1`. 

## Como montar automaticamente no Boot

Basta adicionar uma entrada no arquivo localizado em `/etc/fstab`. Para isso é necessário copiar o identificador do disco que pode ser visulizado com o comando `sudo blkid`.

Referência: <https://frameboxxindore.com/linux/how-do-i-mount-a-drive-in-linux-terminal.html>
