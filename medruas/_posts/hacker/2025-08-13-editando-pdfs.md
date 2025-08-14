---
title: Editando PDFs
---

Gosto muito de estudar por livros mas gosto também de deixar artigos separados em pastas pra cada assunto. Então, as vezes gosto de extrair capítulos dos livros e salvar em pdfs separados. Para extrair páginas de um pdf para um novo arquivo, utilizo o aplicativo `pdfarranger`.

O problema é que as vezes os capítulos mantém a estrutura de tópicos dos livros e isso me atrapalha na hora de abrir no celular ou no computador (uso os aplicativos: Xodo no celular/tablet android e Okular no computador linux).

Uma solução que encontrei foi recriar o pdf com o comando `pdftocairo` abaixo:

```
pdftocairo -pdf original.pdf sem_bookmarks.pdf
```