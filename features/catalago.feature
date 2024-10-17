#language: pt

Funcionalidade: Catálogo de Cafés
    Como um usuário do site, eu quero ver o catálogo de cafés na página principal
    Para que eu possa escolher e saber mais sobre os produtos disponíveis

Cenário: Acessar o catálogo de cafés na página principal

    Quando acesso a página principal da Starbugs
    Então eu devo ver uma lista de cadés disponíveis

@temp
Cenário: Iniciar a compra com um café

    Dado que estou na página princial da Starbugs
        E que desejo comprar o café "Expresso Gelado"
        E que esse produto custa "R$ 9,99"
        E que o custo de entrega é de R$ 10.00
    Quando Inicio a compra desse item
    Então devo ver a página de Checkout com os detalhes do produto
        E o valor da compra deve ser R$ 19.99

Cenário: Café Indiponível

    Dado que estou na página princiap da Starbugs
        E que desejo comprar o café "Expresso Cremeso"
    Quando inicio a compra desse item
    Então devo ver um popup informando que o produto está indisponível
