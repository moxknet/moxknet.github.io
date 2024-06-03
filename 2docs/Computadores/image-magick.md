---
title: Mágicas no image-magick
layout: page
---

<img src="/img/resize.webp" alt="Logo do ImageMagick" style="float:right;">

O Image Magick é um programa CLI (command-line-tool), de terminal, de manipulação de imagens
que já vem por padrão na maioria das distribuições Linux. Com o tempo fui descobrindo como esse
programa é rico de funções e decidi compartilhas as que mais uso aqui -- são os truques e mágicas
do imagem-magick.

Obs: em alguns sistemas o comando `convert` mudou para `magick`, bastando apenas substituir os dois.

## Otimizando imagens

O comando `convert` permite converter o formato de arquivos e com a tag `-quality x%`
podemos alterar reduzir o tamanho das imagens reduzindo também a qualidade.

Na primeira linha do código abaixo, reduzimos a qualidade para 10% da imagem
`exemplo.png`, mantendo o seu formato `.png`. Já na segunda linha,
fazemos o mesmo processo mas convertendo para o formato `.webp`.

```
convert exemplo.png -quality 10% exemplo.png</code></pre>
convert exemplo.png -quality 10% exemplo.webp</code></pre>
```

## Redimensionando

Por padrão ele mantém o *aspect ratio* a não ser que seja explicitamente
ordenado o contrario.

```
convert exemplo.png -resize 64x64 resize_dragon.png
```

## Dithering

O Gimp é o programa normalmente usado pra fazer *dithering* de imagens, mas o image-magick também 
faz muito bem e de forma simples. Existem muitas formas de customizar a saída e o grau do efeito mas
vou deixar abaixo apenas comandos simples que uso. Para um guia completo recomendo ler 
[este artigo](https://legacy.imagemagick.org/Usage/quantize/).

```
# Halftone Screen (45 degree angle)
convert logo.png   -ordered-dither h4x4a    logo_h4x4a.gif
convert logo.png   -ordered-dither h6x6a    logo_h6x6a.gif
convert logo.png   -ordered-dither h8x8a    logo_h8x8a.gif
# Halftone Screen (orthogonal)
convert logo.png   -ordered-dither h4x4o    logo_h4x4o.gif
convert logo.png   -ordered-dither h6x6o    logo_h6x6o.gif
convert logo.png   -ordered-dither h8x8o    logo_h8x8o.gif
```

![Dithered ImageMagick logo](/img/image-magick-dither.webp)
