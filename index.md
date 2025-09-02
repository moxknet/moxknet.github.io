---
layout: default
title: "Blog do Mosca"
---

Site que funciona como um jardim, onde exibo e também cuido dos meus hobbies.

- [Medicina das Ruas](/medruas)
- [Jogos de tabuleiro](/boardgames/jogos-tabuleiro)
- [Jogos de baralho](/boardgames/baralho)
- Aprendendo a digitar mais rápido: [TypingClub](https://www.edclub.com/sportal/program-21.game)

## Postagens

<ul>
  {% for post in site.posts %}
    {% unless post.path contains "medruas" %}
      <li>
        <span>{{ post.date | date: "%d/%m/%Y" }}</span>
        <a href="{{ post.url }}">{{ post.title }}</a>
      </li>
    {% endunless %}
  {% endfor %}
</ul>
