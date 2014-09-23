json.array!(@pessoa_juridicas) do |pessoa_juridica|
  json.extract! pessoa_juridica, :id, :nome, :endereco, :bairro, :email, :telefone, :porte, :cnpj, :cidade
  json.url pessoa_juridica_url(pessoa_juridica, format: :json)
end
