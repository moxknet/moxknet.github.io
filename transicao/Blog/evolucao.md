---
title: Evolução do MOXK!
layout: page
---

<style>
 p {text-indent: 0}
 body {background-color: lightgreen;}
</style>

_Atualizações do que há de novo no blog/site_.

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

