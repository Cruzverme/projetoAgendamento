json.array!(@pessoa_fisicas) do |pessoa_fisica|
  json.extract! pessoa_fisica, :id, :nomeCompleto, :idade, :dataNascimento, :endereco, :cpf, :cidade, :bairro, :telefone, :email
  json.url pessoa_fisica_url(pessoa_fisica, format: :json)
end
