---
title: Como lidar com cartas atrasadas no Anki
---

Passei as férias de fim de ano sem fazer minhas cartas do Anki e agora que voltei a ativa me deparo com a surpresa de 500+ cartas atrasadas. E agora?

Antigamente eu tinha muito medo de acumular revisões atrasadas porque elas vão se acumulando e formando uma avalanche. Mas depois de navegar nos fóruns e ler o [FAQ oficial do Anki](https://docs.ankiweb.net/studying.html#falling-behind), mudei de paradigma.

Perdi o medo de atrasar cartas, aparentemente isso não vai quebrar o algoritmo muito menos comprometer de forma significativa a memorização -- só vai ficar um pouco mais difícil revisar as cartas com um intervalo maior que o original, mas vou encarar como um desafio. 

O algoritmo já foi projetado pensando justamente em lidar com essa circunstância. 

Digamos que uma carta está "agendada" para revisão daqui a 5 dias e novamente daqui a 15 dias mas por algum motivo você atrasou a primeira revisão e só a fez com 17 dias. A partir daí o Anki vai considerar o intervalo da carta como de 17 dias, pois foi o período que você conseguiu lembrá-la com sucesso. O novo intervalo vai ser calculado com base no intervalo padrão + tempo de atraso. Nesse cenário, por exemplo, a segunda revisão pode ser daqui a 30 dias ao invés dos 15 dias padrões para cartas que não sofreram atraso.

Com diz a [Documentação do Anki](https://docs.ankiweb.net/studying.html#falling-behind):

> When you answer cards that have been waiting for a while, Anki factors in that delay when determining the next time a card should be shown. 

E no [FAQ](https://faqs.ankiweb.net/due-times-after-a-break.html) deles

> When people return to their deck after weeks or months of no study, they’re often surprised by the length intervals have grown to. This is because Anki considers the actual time the card was unseen, not just the time it was scheduled for. Thus if the card was scheduled for 5 days but you didn’t study for a month, the next interval will be closer to 60 days than 10 days.

E isso é bom? Sim, pois na prática a importância da repetição espaçada é você lembrar das cartas com o maior intervalo possível. Lembrar de uma carta com um grande intervalo significa que você já a memorizou e não precisa de intervalos menores. Isso acaba dando eficiência no estudo e diminuindo o número excessivo de revisões diárias.

> This is a good thing. If you have successfully remembered a card after a one month wait, chances are you’ll remember it again after a longer wait, too. The same principles which make SRS effective in normal use apply when you’re studying after a delay, too. It also makes little sense to schedule a card for 10 days in the future if you were able to easily answer it after a whole month’s wait - you’d be going backwards.

Após descobrir isso, perdi completamente o medo de deixar cartas acumularem. E tirei tanco um peso das costas.

Agora vamos analisar o impacto das _overdues_ na carga de trabalho. Pesquisando ```prop:due<0``` o painel vai exibir apenas as cartas atrasadas (*overdue*). No meu caso, eu agora tenho 313.

![Pesquisando cartas overdue](/img/overdue_anki.jpeg)

Já que estou cheio de cartas acumuladas, mudei para 0 o número de cartas novas para que eu possa focar primeiro em colocar as cartas antigas em dia.

Usando a extensão "anki simulator" eu estimei a carga de trabalho para os próximos dias. A linha da **simulação 1** é uma estimativa da quantidades de reviews diários que vou precisar fazer quando o limite diário de cards é **99999**, ou seja, o Anki vai jogar todas as cartas atrasadas logo no primeiro dia de retorno.

![Simulando impacto das overdue](/img/overdue_anki_simulacao.jpeg)

Entretanto, se eu configurar um limite de cartas para um **máximo de 50 revisões por dia**, como mostra a linha da **simulação 2**, eu o impacto a longo prazo vai ser muito pequeno e não vou ficar sobrecarregado com muitos cards nos primeiros dias.

![Configurando limite de revisões por dia](/img/overdue_anki_maximum_reviews.jpeg)

Com um limite diário, eu consigo recuperar ao atraso aos pouquinhos ao invés de já chegar precisando revisar 350+ cartas atrasadas num só dia. E percebam que a longo prazo o atraso vai ser domado completamente, pois vou ter uma média de 50 cards por dia para revisar independente de ter colocado limite de cards ou não.

Tudo isso graças ao algoritmo do Anki que vai somando os dias de atraso ao intervalo da carta, impedindo que você acumule muitas revisões desnecessárias.

## E se eu resetar todas as cartas atrasadas e começar do zero?

NÃO FAÇA ISSO!!! Já fiz isso no passado, acumulei mais de 2000 cartas atrasadas e achei que seria melhor resetá-las para começar do zero. O [FAQ do Anki](https://faqs.ankiweb.net/due-times-after-a-break.html) explica porque essa não é uma boa ideia:

> Resetting the deck is an even worse solution. When returning to a deck after a long absence, you may have forgotten many of your cards, but chances are you haven’t forgotten them all. Resetting the entire deck means you have to waste time studying material you already know.

## Posso pausar o deck para tirar uns dias de férias?

Isso não é possível, e o [FAQ do Anki](https://faqs.ankiweb.net/i-am-going-on-vacation-can-i-pause-the-scheduler.html) explica porque não seria uma boa ideia:

> [...] unfortunately while it's easy to tell the computer to suspend its estimates of how quickly you are forgetting, it's not possible to suspend your memory, so memories will continue to decay if you don't review. If you paused the scheduler, you would be delaying the review of every card in your deck, increasing your chance of forgetting every one of them, even those that would normally have appeared after you returned from your break

## Leituras recomendadas

* <https://faqs.ankiweb.net/due-times-after-a-break.html>
* <https://docs.ankiweb.net/studying.html#falling-behind>
* <https://faqs.ankiweb.net/i-am-going-on-vacation-can-i-pause-the-scheduler.html>