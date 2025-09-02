---
layout: index
title: "Medicina das Ruas"
---

<img src="kliniko.png" alt="" style="display: block; float: right;">

<p style="font-size: 12px; max-width: 780px;">Coluna de medicina do blog do Mosca, clínico em formação. Essa coluna é escrito por uma médico e destinada para outros médicos, não tem nenhuma pretensão de servir como aconselhamento à população geral. O objetivo aqui é contribuir para a educação médica.</p>

<hr>

## Páginas

- 🔍 Buscador de [revisões no PubMed](busca-pubmed) (eu que fiz!)
- [Por onde estudo](fontes-estudo)

## Diário do R1

Aqui vai ser meu diário (na verdade semanário e, talvez até mensário, pois R1 tem pouco tempo livre pra ficar escrevendo todo dia) do primeiro ano da residência em clínica médica. Vão perceber que a maioria dos títulos são perguntas, pois tenho mais dúvidas do que respostas.

<ul>
  {% for post in site.posts %}
    {% if post.path contains 'medruas/' %}
      <li>
        <span>{{ post.date | date: "%d/%m/%Y" }}</span>
        <a href="{{ post.url }}">{{ post.title }}</a>
      </li>
    {% endif %}
  {% endfor %}
</ul>


## Links úteis

- [Curso de digitação](https://www.edclub.com/pt-BR/library/bosque-da-digitacao) -- acredite, ajuda muito a agilizar sua vida nas admissões e altas (e é gratuito).
- [Criador de acrônimos](https://remember.shinyapps.io/remember_shiny_tool/) -- uso pra criar flashcards.
- [Zbib](https://zbib.org/) -- site que uso pra formatar referências.
- Guidelines da [IDSA](https://www.idsociety.org/practice-guideline/all-practice-guidelines/).


## Prateleira dos meus papers favoritos

- 2023 AFP -- [Dizziness: Evaluation and Management](https://www.aafp.org/pubs/afp/issues/2023/0500/dizziness.html)
- 2018 CHEST -- [Cavitary Lung Diseases: A Clinical-Radiologic Algorithmic Approach](https://pubmed.ncbi.nlm.nih.gov/29518379/)
- 2006 Radiology Assistant -- [HRCT - Basic Interpretation](https://radiologyassistant.nl/chest/hrct/basic-interpretation)

## Fontes de estudo:

- [AFP journal](https://www.aafp.org/pubs/afp.html)
- [NEJM review articles](https://www.nejm.org/browse/nejm-article-type/review-article)
- [Nature reviews disease primers](https://www.nature.com/nrdp/reviews-and-analysis?type=primer)
- [Annals of Internal Medicine In the Clinic](https://www.acpjournals.org/topic/category/in-the-clinic)
- [Cleveland Clinic Journal of Medicine](https://www.ccjm.org/content/by/section/Review)