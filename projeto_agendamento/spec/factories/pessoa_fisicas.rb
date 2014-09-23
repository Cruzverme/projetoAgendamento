# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pessoa_fisica do
    nomeCompleto "MyString"
    idade "MyString"
    dataNascimento "MyString"
    endereco "MyString"
    cpf 1
    cidade "MyString"
    bairro "MyString"
    telefone "MyString"
    email "MyString"
  end
end
