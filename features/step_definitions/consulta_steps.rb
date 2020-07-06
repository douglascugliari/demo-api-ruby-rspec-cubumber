Given("o endereço da API") do
  $uri_base = "https://parallelum.com.br/fipe/api/v1"
end

Given('informar o tipo do veículo "{string}"') do |tipoVeiculo|
  $uri_base = $uri_base + "/" + tipoVeiculo
end

Given('informar a marca "{string}"') do |marca|
  $uri_base = $uri_base + "/marcas/" + marca
end

Given('informar o modelo "{string}"') do |modelo|
  $uri_base = $uri_base + "/modelos/" + modelo
end

Given('informar o ano "{string}"') do |ano|
  $uri_base = $uri_base + "/anos/" + ano
end

When("submeter a requisição na API") do
  $response = HTTParty.get($uri_base)
end

Then("a API deverá me retorna somente os dados referente aos parâmetros informados") do
  expect($response.code).to eq(200)
  expect($response["Valor"]).to eq('R$ 58.396,00')
  expect($response["CodigoFipe"]).to eq('004381-8')
  expect($response.body).to match_json_schema('consulta')
end
