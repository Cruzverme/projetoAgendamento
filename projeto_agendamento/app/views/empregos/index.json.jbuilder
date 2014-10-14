json.array!(@empregos) do |emprego|
  json.extract! emprego, :id, :cargo, :quantidadeDeVagas, :salario, :descricao, :requisitos, :pessoa_juridica_id
  json.url emprego_url(emprego, format: :json)
end
