Feature: Consulta valor carro

    Como um usuário desejo realizar a consulta do modelo "CRUZE LTZ 1.8 16V FlexPower 4p Aut" 
        da marca "Chevrolet" e ano "2016".

    Scenario Outline: Consultar veículo do tipo carro da marca "Chevrolet"
        Given o endereço da API 
        And informar o tipo do veículo "<tipoVeiculo>"
        And informar a marca "<marca>"
        And informar o modelo "<modelo>"
        And informar o ano "<ano>"
        When submeter a requisição na API
        Then a API deverá me retorna somente os dados referente aos parâmetros informados

    Examples:
        | tipoVeiculo | marca | modelo  | ano       |   
        | "carros"    | "23"  | "5637"  | "2016-1"  |