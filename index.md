---
layout: default
title: "MOXK.net"
---

Bem vindo(a)! Esse _website_ é a casa dos meus hobbies!

## Aquarela 🖼️

<ul>
  {% for page in site.pages %}
    {% if page.title and page.url != "/" and page.categories contains "aquarela" %}
      <li>
        <a href="{{ page.url }}">{{ page.title }}</a>
      </li>
    {% endif %}
  {% endfor %}
</ul>

## Boardgames 🎲

<ul>
  {% for page in site.pages %}
    {% if page.title and page.url != "/" and page.categories contains "boardgames" %}
      <li>
        <a href="{{ page.url }}">{{ page.title }}</a>
      </li>
    {% endif %}
  {% endfor %}
</ul>

## Canetas ✒️

<ul>
  {% for page in site.pages %}
    {% if page.title and page.url != "/" and page.categories contains "canetas" %}
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