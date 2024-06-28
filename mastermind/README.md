# Mastermind

## Jogo

### Descrição do Jogo

Master Mind é um jogo de tabuleiro clássico que desafia a capacidade de raciocínio lógico e a habilidade de resolver problemas. O objetivo do jogo é descobrir a combinação secreta de cores definida pelo oponente. A cada tentativa, o jogador recebe feedback para ajustar suas próximas jogadas até desvendar a combinação correta.

### Regras do Jogo

O jogo é jogado por dois jogadores: o **Codificador** e o **Decodificador**.

- O Codificador escolhe uma combinação secreta de quatro pinos coloridos, com repetição permitida.
- O Decodificador tem um número limitado de tentativas para adivinhar a combinação secreta.

#### Jogando

A cada rodada, o Decodificador propõe uma combinação de quatro pinos coloridos.

O Codificador fornece feedback para cada tentativa, informando a quantidade de pinos na posição correta e a quantidade de pinos na posição errada.

#### Fim do Jogo

O jogo termina quando o Decodificador descobre a combinação secreta ou esgota o número de tentativas.

Se o Decodificador descobrir a combinação secreta, ele vence o jogo.
Se todas as tentativas forem esgotadas sem descobrir a combinação secreta, o Codificador vence.

### Componentes

- Um tabuleiro com 4 espaços para os pinos.
- Pinos coloridos para criar as combinações.

### Exemplo de Jogo

O Codificador escolhe a combinação secreta: Vermelho, Azul, Verde, Amarelo.
O Decodificador faz a primeira tentativa: Azul, Azul, Vermelho, Verde.
O Codificador fornece o feedback:

- 1 pino na posição correta
- 2 pinos na posição errada

O Decodificador ajusta sua próxima tentativa com base no feedback recebido.
O jogo continua até que a combinação secreta seja descoberta ou que todas as tentativas sejam usadas.

### Estratégias

<details>
  <summary>Dica 1</summary>
  <ul>Use o feedback para eliminar cores e posições incorretas.</ul>
</details>
<details>
  <summary>Dica 2</summary>
  <ul>Utilize combinações que testem múltiplas hipóteses ao mesmo tempo.</ul>
</details>
<details>
  <summary>Dica 3</summary>
  <ul>Utilize combinações que testem múltiplas hipóteses ao mesmo tempo.</ul>
</details>

### Créditos

Master Mind é um jogo clássico criado por Mordecai Meirowitz. Esta implementação visa proporcionar uma versão divertida e educativa do jogo, preservando sua essência desafiadora e estratégica.

## Projeto

### Descrição do projeto

Este é o Jogo Mastermind implementado em Ruby

### Estrutura do Projeto

- `lib`: Contém as classes principais do jogo
  - `game.rb`
- `main.rb`: Arquivo principal para iniciar o jogo.
- `README.md`: Documentação do projeto

### Como jogar

1. Clone o repositório.
2. Navegue até o ditetório do projeto.
3. Execute `ruby main.rb` para iniciar o jogo.
