json.array!(@estagios) do |estagio|
  json.extract! estagio, :id, :cargo, :quantidadeDeVagas, :salario, :descricao, :especificacaoDeVaga, :pessoa_juridica_id
  json.url estagio_url(estagio, format: :json)
end
