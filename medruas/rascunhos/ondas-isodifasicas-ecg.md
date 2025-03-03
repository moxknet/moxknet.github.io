---
title: Como são criadas ondas isodifásicas no ECG
date: 2020-08-31
---

_Originalmente publicado na forma de uma thread no Twitter em 31 de agosto de 2020.\
Decidi arquivar essa postagem por aqui, resgatando-a._

Estava estudando ECG e encontrei essa imagem maravilhosa aqui que me fez finalmente entender como ondas isodifásicas são registradas.

![1](/assets/img/medicina/ecg1.png)

Quando eu aprendi ECG, me foi ensinado que o registro ocorre segundo a imagem abaixo. Mas pelo que tô estudando mais a fundo agora, ela parece ter um equívoco.

![1](/assets/img/medicina/ecg2.png)

Aqui a imagem está mostrando que vetores perpendiculares ao eixo dos eletrodos vão registrar ondas isodifásicas, mas isso está conceitualmente equivocado.

![1](/assets/img/medicina/ecg3.png)

Na verdade, o ECG registra a projeção do vetor elétrico resultante no eixo dos eletrodos.

![1](/assets/img/medicina/ecg4.png)

Então, se o vetor for perpendicular ao eixo dos eletrodos, não há nenhuma projeção. Dessa forma, vetores perpendiculares não causam nenhuma deflexão no ECG.

![1](/assets/img/medicina/ecg5.png)

Porém, o ECG registra a atividade elétrica ao longo do tempo. E o vetor resultante do coração varia a cada instante, ele muda o tempo todo de direção. E acontece que, quando ele gira em torno da linha perpendicular ao eixo dos eletrodos, aí sim é produzida uma onda difásica.

O vetor resultante que fazia uma projeção negativa, mudou de direção e ficou perpendicular — retornando à linha isoelétrica — e depois mudou de novo de direção, ficando positivo. Foi da direção 1, para a 2 e depois para a 3.

![1](/assets/img/medicina/ecg6.png)

Aí é o seguinte: podemos ver no traçado que essas deflexões duraram 200 ms. Porém, a cada milissegundo o vetor resultante mudou de direção e girou em torno da linha perpendicular.

Se calcularmos o vetor resultante desses 200 ms, aí sim teremos um vetor perpendicular que 'produziu' uma onda isodifásica. Mas isso só acontece pois estamos usando o vetor resultante médio de um intervalo de tempo de 200 ms e não o vetor resultante instantâneo.

Se os vetores instantâneos positivos e negativos forem espelhados — a porção positiva igual mas oposta à negativa —, será produzida uma onda isodifásica. Como no caso de cima.

Aqui tem exemplos de mais ondas difásicas mas não isodifásicas, pois as porções positivas e negativas são diferentes.

![1](/assets/img/medicina/ecg7.png)

Aqui é uma outra imagem bem legal mostrando o giro do vetor resultante instantâneo da despolarização ventricular. Ele muda de direção ao longo do tempo. Esse giro que é responsável por registrar o complexo QRS.

![1](/assets/img/medicina/ecg8.png)

Essa outra imagem mostra a variação na direção dos vetores e o respectivo traçado no ECG.

![1](/assets/img/medicina/ecg9.jpeg)

Enfim, é isso. Estou feliz por finalmente entender como ondas isodifásicas se formam no ECG. Esse conceito de o vetor resultante girar e mudar o tempo todo de direção abriu minha mente. Eu estava enxergando os vetores como estáticos e com direção fixa.

## Referências

As imagens e a explicação são desse livro fantástico aqui:
- Stroobandt R, Barold SS, Sinnaeve AF. ECG from Basics to Essentials: Step by Step. John Wiley & Sons, Inc; 2015.
