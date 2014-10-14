# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :emprego do
    cargo "MyString"
    quantidadeDeVagas 1
    salario 1.5
    descricao "MyString"
    requisitos "MyString"
    pessoa_juridica nil
  end
end
