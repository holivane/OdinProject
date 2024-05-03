# OdinProject
Atividades desenvolvidas durante as aulas do The Odin Project

## Caesa Cipher
Caesar Cipher é um método de cifrar mensagem de forma a substituir cada letra do texto original por uma letra deslocada em um certo número de posições para frente no alfabeto.

Atividade feita em dois arquivos:
- caesar_cipher.rb: Que resolve o problema de codificar uma frase.
- caesar_cipher_up.rb: Que resolve o problema anterior, mas usando Classe.

Na primeira resolução foi usado o conhecimento de each_char, bloco de código, if/else, include, conversão de caracteres em valor numérico da tabela ASCII `.ord`.

Na segunda resolução foi implementada a Classe `CaesarCipher`.

Para utilizar a classe é necessário criar uma istância passando o fator de deslocamento.
```ruby
phrase = CaesarCipher.new(5)
```

Em seguida chamar o método `cipher` passando a mensagem como argumento.

```ruby
code = phrase.cipher("What a string!")
```