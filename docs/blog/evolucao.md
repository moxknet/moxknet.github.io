---
title: Evolução do MOXK!
layout: page
---

<style>
 body {background-color: #bcffcd;}
</style>

<center style="max-width: 400px; margin: 0 auto; padding-bottom: 20px;">
<i>Atualizações semanais (nem sempre) do que há de novo no saite e do que ando fazendo</i>
</center>

<table>	
		{% for post in site.posts %}
		<tr><td nowrap><span>{{ post.date | date: "%d/%m/%y" }}</span>
		<a href="{{ post.url }}">{{ post.title }}</a>
		</td></tr>
		{% endfor %}
</table>
