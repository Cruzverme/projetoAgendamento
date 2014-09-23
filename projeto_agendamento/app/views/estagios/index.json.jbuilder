json.array!(@estagios) do |estagio|
  json.extract! estagio, :id, :cargo, :quantidadeDeVagas, :salario, :descricao, :especificacaoDeVAga, :PessoaJuridica_id
  json.url estagio_url(estagio, format: :json)
end
