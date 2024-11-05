---
layout: default
title: "MOXK.net"
---

Bem vindo(a)! Sou um médico generalista com vários hiperfocos e que gosta de compartilhar coisas.

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

## Tarefas

- [ ] Ler o estudo [Invasive Treatment Strategy for Older Patients with Myocardial Infarction](https://www.nejm.org/doi/full/10.1056/NEJMoa2407791)
- [ ] Ler o estudo [AXADIA-AFNET 8](https://pubmed.ncbi.nlm.nih.gov/36335915/) comparando a segunrança de anticoagular pacientes dialíticos com apixabana versus varfarina.