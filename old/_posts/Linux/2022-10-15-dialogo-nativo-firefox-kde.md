---
title: Como habilitar as janelas de diálogo nativas do KDE no firefox
category: Linux
tags: [Hacks, KDE, Firefox] 
---

Alguns usuários do KDE Plasma -- como era o meu caso -- podem ter percebido que o Firefox usa por padrão as janelas de diálogo do GTK. Por exemplo, ao salvar uma imagem, a janela que aparece é uma janela diferente do Dolphin (imagem abaixo).

![Diálogo GTK no KDE do firefox](/img/linux/dialogo-gtk-kde.jpg)

Vou mostrar a seguir os passos para habilitar os diálogos nativos do KDE no Firefox (imagem abaixo). Vou partir do pressuposto que você está usando uma distribuição linux que use o ``apt`` como gestor de pacotes (Debian, Ubuntu...); se esse não for o caso, altere os comandos de acordo com a sua distro.

![Diálogo nativo do KDE no Firefox](/img/linux/dialogo-nativo-kde.jpg)

## Instalar pacotes necessários

É necessário instalar os seguintes pacotes:

* xdg-desktop-portal
* xdg-desktop-portal-kde

É bem provável que eles já estejam instalados no seu sistema (como era o meu caso). Relembrando como instalar pacotes (antes atualize o sistema), abra o terminal e execute os comandos -- uma linha de cada vez:

    sudo apt update
    sudo apt upgrade
    sudo apt install xdg-desktop-portal xdg-desktop-portal-kde

## Editar o arquivo firefox.desktop


Agora é necessário editar o arquivo ``firefox.desktop``. No meu caso, como uso o Debian, o meu Firefox é o "ESR" (Extended Support Release), então eu edito o arquivo ``firefox-esr.desktop``.

Se você quer fazer uma configuração **para todos os usuários**, o arquivo fica localizado em ``/usr/share/applications/``. Para isso, é necessário ter **acesso root** -- recomendo fazer um backup do arquivo antes.

Para fazer uma configuração **apenas no usuário atual**, é necessário editar (ou criar uma cópia neste diretório, caso não haja) do arquivo em ``/.local/share/applications/``.

Abra o ``firefox.desktop`` com um bloco de notas e edite a linha que contêm ``Exec=``. Basta apenas acrescentar o comando ``GTK_USE_PORTAL=1``, logo após o símbolo de ``=``, deixando um **espaço** antes do caminho que já estava presente.

**Reforçando...** estava assim:

    Exec=/usr/lib/firefox/firefox %u

E você vai deixar assim:

    Exec=GTK_USE_PORTAL=1 /usr/lib/firefox/firefox %u

A imagem abaixo é um print do meu aquivo antes e depois. Lembrando que no meu caso o caminho termina em ``firefox-esr`` pois uso o Debian.

![Antes](/img/linux/dialogo-antes.jpg)

![Depois](/img/linux/dialogo-depois.jpg)

## Pronto!

É pronto! Basta apenas reiniciar o navegador e testar a mudança salvando alguma imagem ou escolhendo o destino de algum download.

## Problemas possíveis

Se o seu navegador não estiver iniciando, você deve ter feito alguma edição errada no arquivo ``firefox.desktop``. Certifique-se de não ter omitido ou apagado espaços necessários. Por isso é melhor sempre fazer uma cópia de segurança do arquivo original antes.

Qualquer dificuldade me manda um email que posso tentar ajudar.


