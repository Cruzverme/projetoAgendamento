# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pessoa_fisica do
    nome "MyString"
    dataNascimento "2014-10-20"
    endereco "MyString"
    cpf 1
    curriculo "MyText"
    cidade "MyString"
    bairro "MyString"
    telefone "MyString"
    email "MyString"
  end
end
