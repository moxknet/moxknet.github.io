---
title: Como redefinir a senha de um usuário Samba
---

Como no Samba todas as senhas são criptografadas, uma vez que você esquece alguma delas é impossível recuperar. Mas é possível criar uma nova no servidor que esta hospedando o Samba (e, portanto o diretório de origem).

Para mostrar os usuários do Samba:

```
sudo pdbedit -L -v
```

Para criar uma nova senha:

```
sudo smbpasswd -a user-name
```