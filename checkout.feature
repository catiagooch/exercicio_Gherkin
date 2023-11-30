
Funcionalidade: Tela de cadastro para check out
        Como cliente da EBAC-SHOP
        Quero concluir o cadastro
        Para concluir minha compra


        Contexto:
        Dado que eu esteja na página de check out

        Cenario: Realizar compra com sucesso
        Quando eu cadastrar meus dados obrigatórios
        E clicar no botao "Finalizar"
        Então mensagem "Compra realizada com sucesso" sera exibida

        Esquema do Cenario:  Realizar compra sem todos os dados obrigatorios preenchidos
        Quando eu preecher os dados <Nome>, <Sobrenome>, <País>, <Endereço>, <Cidade>,<CEP>,<Telefone>,<Endereço de email>
        E clicar no botao "Finalizar"
        Então deve exibir mensagem de alerta <mensagem>

    Exemplos:
            | Nome    | Sobrenome | País       | Endereço     | Cidade           | CEP       | Telefone   | Endereço de email      | mensagem                            |
            | "Catia" | "Gooch"   | "Portugal" | "Rua Brasil" | "Lisboa"         | "1111111" | "99999999" | "catiagoo@chgmail.com" | "Compra realizada com sucesso"      |
            | ""      | "Gooch"   | "Brasil"   | "Rua xx"     | "Rio de Janeiro" | "1111111" | "88888888" | "catiagooch@gmail.com" | "Dado de preenchimento obrigatorio" |
            | "Catia" | ""        | "Portugal" | "Rua Brasil" | "Lisboa"         | "1111111" | "99999999" | ""                     | "Dado de preenchimento obrigatorio" |
            | "Catia" | "Gooch"   | ""         | "Rua Brasil" | "Lisboa"         | "1111111" | "99999999" | "catiagooch@gmail.com" | "Dado de preenchimento obrigatorio" |
            | "Catia" | "Gooch"   | "Portugal" | ""           | "Lisboa"         | "1111111" | "99999999" | "catiagooch@gmail.com" | "Dado de preenchimento obrigatorio" |
            | "Catia" | "Gooch"   | "Portugal" | "Rua Brasil" | ""               | "1111111" | "99999999" | "catiagooch@gmail.com" | "Dado de preenchimento obrigatorio" |
            | "Catia" | "Gooch"   | "Portugal" | "Rua Brasil" | "Lisboa"         | ""        | "99999999" | "catiagooch@gmail.com" | "Dado de preenchimento obrigatorio" |
            | "Catia" | "Gooch"   | "Portugal" | "Rua Brasil" | "Lisboa"         | "1111111" | ""         | "catiagooch@gmail.com" | "Dado de preenchimento obrigatorio" |

    Esquema do Cenario: Compra con email invalido
        Quando eu digitar <email> invalido
        E  clicar no botao "Finalizar"
        Então deve exibir mensagem de alerta "Email Invalido"
    Exemplos:
            | Email                |
            | catiagoo.chgmail.com |
            | catiagoo.gmail.com   |
            | catiagoo.mail.com    |


  



