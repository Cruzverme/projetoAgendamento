# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pessoa_juridica do
    nome "MyString"
    endereco "MyString"
    bairro "MyString"
    email "MyString"
    telefone "MyString"
    porte "MyString"
    cnpj 1
    cidade "MyString"
  end
end
