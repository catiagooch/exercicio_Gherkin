Funcionalidade: Login na plataforma

Como cliente da EBAC-SHOP
Quero fazer login na plataforma
Para visualizar meus pedidos

Contexto: Given Que eu acesse a página de autenticação da plataforma EBAC-SHOP

Cenario: Ir para a tela de check out
Quando Eu inserir dados válidos
Então Ir para a página de check out

Cenario: Dado de login errado
Quando Eu inseri algum dado de login errado
Então  Deve exibir mensagem de alerta: "Usuário ou senha inválidos"


