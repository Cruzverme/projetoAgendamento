json.array!(@pessoa_fisicas) do |pessoa_fisica|
  json.extract! pessoa_fisica, :id, :nome, :dataNascimento, :endereco, :cpf, :curriculo, :cidade, :bairro, :telefone, :email
  json.url pessoa_fisica_url(pessoa_fisica, format: :json)
end
