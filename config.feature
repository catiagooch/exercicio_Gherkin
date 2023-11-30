#language: pt

Funcionalidade: Configurar produto

Dado Quero configurar meu produto de acordo com meu tamanho e gosto
Quando Configurar meu produto de acordo com meu tamanho e gosto
E Escolher a quantidade
Então Inserir no carrinho

Contexto: Eu estou no site da EBAC-SHOP para configurar meu produto

Cenario: Seleção de cor, tamanho e quantidade devem ser obrigatórios
Quando eu selecionar o tamanho "S", a cor "orange", a quantidade escolhida for "2"
E o usuario clicar no botao "comprar"
Então o item adicionado no carrinho

Cenario: Deve permitir apenas 10 produtos por venda
Quando eu clicar em número de produtos "10"
Então deve aparecer mensagem "Produto adicionado com sucesso!"

Cenario: Deve permitir apenas 10 produtos por venda
Quando eu clicar em número de produtos "11"
Então deve aparecer mensagem "Máximo 10 produtos podem ser adicionados"

Cenario: Quando eu clinar no botão "limpar" deve voltar ao estado original
Quando Eu clicar no botão limpar
Então As seleções que fiz devem ficar vazias

Esquema do Cenario: Configurações de produtos
Quando Eu selecionar <tamanho>, selecionar <cor>, selecionar <quantidade>
Então mostrar <mensagem>

Exemplos: 

|tamanho|cor|quantidade|mensagem|
|"XS"|"Blue"|"1"|"Produto adicionado com sucesso!"
|"X"|"Orange"|"2"|"Produto adicionado com sucesso!"
|"M"|"Red"|"3"|"Produto adicionado com sucesso!"
|"G"|"Blue"|"11"|"Máximo 10 produtos podem ser adicionados"

