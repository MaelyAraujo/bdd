Quando('acesso a página principal da Starbugs') do
    visit 'https://starbugs-qa.vercel.app'
end
  
Então('eu devo ver uma lista de cadés disponíveis') do
    products = all('.coffee-item')
    expect(products.size).to be >0
end
  
Dado('que estou na página princial da Starbugs') do
    visit 'https://starbugs-qa.vercel.app'
end

Dado('que desejo comprar o café {string}') do |product_name|
    @product_name = product_name 
end

Dado('que esse produto custa {string}') do |product_price|
    @product_price = product_price
end

Dado('que o custo de entrega é de R$ {float}') do |delivery_price|
    puts delivery_price
end

Quando('Inicio a compra desse item') do 
 product = find('.coffee-item', text: @product_name)
 product.find('.buy-coffee').click
end

Então('devo ver a página de Checkout com os detalhes do produto') do
    product_title = find('.item-details h1')
    expect(product_title).to eql @product_name

    sub_price = find('.subtotal .subprice')
    expect(sub_price.text).to eql @product_price
end

Então('o valor da compra deve ser R$ {float}') do |float|
pending # Write code here that turns the phrase above into concrete actions
end

