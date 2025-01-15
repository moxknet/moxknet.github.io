---
layout: default
title: "Medicina das Ruas"
---

Um blog de um médico escrito para médicos.

<ul>
  {% for page in site.pages %}
    {% if page.categories contains "medicina" and page.title != "Medicina das Ruas" %}
      <li>
        <a href="{{ page.url }}">{{ page.title }}</a>
      </li>
    {% endif %}
  {% endfor %}
</ul>

## Tarefas

- [ ] Ler o estudo [Invasive Treatment Strategy for Older Patients with Myocardial Infarction](https://www.nejm.org/doi/full/10.1056/NEJMoa2407791)
- [ ] Ler o estudo [AXADIA-AFNET 8](https://pubmed.ncbi.nlm.nih.gov/36335915/) comparando a segunrança de anticoagular pacientes dialíticos com apixabana versus varfarina.