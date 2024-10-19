---
layout: index
title: "MOXK.net"
---

<style>
body {
  background-image: url('/tile.png');
}
</style>

<img src="moxk.png" alt="Logo" style="display: inline-block">

Bem vindo! Sou um médico generalista com vários hiperfocos e que gosta de compartilhar coisas.

## Boardgames

<ul>
  {% for page in site.pages %}
    {% if page.title and page.url != "/" and page.categories contains "boardgames" %}
      <li>
        <a href="{{ page.url }}">{{ page.title }}</a>
      </li>
    {% endif %}
  {% endfor %}
</ul>

## Medicina

<ul>
  {% for page in site.pages %}
    {% if page.title and page.url != "/" and page.categories contains "medicina" %}
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
