#language:pt

Feature: Tela de cadastro Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu esteja logado como cliente da EBAC-SHOP


            Cenário: Concluir cadastro para finalizar compra
            Quando eu preencher todos os dados obrigatórios com asteriscos
            E clicar em finalizar compra
            Então devo visualizar uma mensagem de sucesso


            Cenário: Concluir cadastro com campos vazios
            Quando eu deixar campos vazios no cadastro, que possuam asteriscos
            E clicar em finalizar cadastro
            Então deve exibir mensagem de alerta "preencher todos os campos"


            Cenário: campo email formato inválido
            Quando eu preencher o email com um formato inválido
            E clicar em finalizar compra
            Então deve aparecer uma mensagem de erro


            Esquema do Cenário: email em formato inválido
            Quando eu preencher o <email> com um formato inválido
            E clicar em finalizar compra
            Então deve exibir uma <mensagem> de erro


            | email                    | mensagem |
            | FRANCINEMENNI@yahoo.com  | erro     |
            | francinemenni#yahoo.com  | erro     |
            | francinemenni.yahoo.com  | erro     |
            | francine menni@yahoo.com | erro     |

Feature Description