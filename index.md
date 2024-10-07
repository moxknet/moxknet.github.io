---
layout: index
title: "MOXK.net"
---

![Logo MOXK.net](/moxk.png)

Bem vindo! Esse é meu cantinho na web. Basicamente criei esse site/blog pra documentar meus hiperfocos.

<ul>
  {% for page in site.pages %}
    {% if page.title and page.url != "/" %}
      <li>
        <a href="{{ page.url }}">{{ page.title }}</a>
      </li>
    {% endif %}
  {% endfor %}
</ul>

## Blog

<ul>
  {% for post in site.posts %}
    <li>
      {{ post.date | date: "%d %b %Y" | replace: "Jan", "Jan" | replace: "Feb", "Fev" | replace: "Mar", "Mar" | replace: "Apr", "Abr" | replace: "May", "Mai" | replace: "Jun", "Jun" | replace: "Jul", "Jul" | replace: "Aug", "Ago" | replace: "Sep", "Set" | replace: "Oct", "Out" | replace: "Nov", "Nov" | replace: "Dec", "Dez" }} <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
