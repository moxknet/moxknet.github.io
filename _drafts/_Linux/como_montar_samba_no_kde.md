---
title: Como montar um diretório Samba no KDE
---


Uma [postagem de um usuário do Reddit](https://www.reddit.com/r/kde/comments/db9jxa/can_someone_please_explain_the_logic_why_kde/) ilustra exatamente o que eu penso: por que o KDE não monta automaticamente os drivers acessados de forma remota? Ele escreve:

> This is not intended to be a troll post or anything I'm really curious why KDE has remained the only DE that refuses to mount a network share when a user browses to it.

> If you type in the address bar of gnome/mate/cinnamon/xfce/etc.etc. smb://my-server/my-share that location automatically gets mounted and all applications on the system have access to the files, in realtime.

> Why is this not the case on KDE? For me at least it is very annoying to have to give each application(that supports it of course and there are only a handfull) my username and password for the share and more often than not it doesn't work.

> At the same time, applications that don't actually support this way KDE does it, they download the files from the network first, and then open them. It is really a waste of bandwidth, time and effort. Finally if you actually want to "work" on the network share you can't, because you are working on your local copy and have to copy it back each time.

> If I'm using say a laptop that doesn't always have connectivity to the network share and is mobile, I can't have the share added to fstab and I can't mount it after the fact without sudo rights. I really can't understand why KDE insists this is the way to do it. Can we at least get a GUI element to make the mount? Maybe if I add it to my network places it can be mounted, it's a location I'm saving no?

## Como montar um driver remoto no KDE

### Usando o smb4k

Eu consegui usando o aplicativo `smb4k` que possui um GUI e é relativamente fácil de configurar. Ele também vem com uma função de sincronização mas eu nem me atrevo a usar pois tenho bastante medo de perder arquivos usando uma ferramente que não conheço bem. Para sincronizar diretório remotor eu já estou bastante acostumado a usar o `rclone`.

```
sudo apt isntall smb4k
```

### Usando o fstab

Mas estou tentando ver uma forma de montar com as próprias ferramentas vanilla do sistema sem necessitar de um aplicativo terceiro. E aí vi muitos forums citando o ```fstab```. Segui esse tutorial aqui: <https://timlehr.com/auto-mount-samba-cifs-shares-via-fstab-on-linux/>