# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :estagio do
    cargo "MyString"
    quantidadeDeVagas 1
    salario 1
    descricao "MyText"
    especificacaoDeVaga "MyString"
    pessoa_juridica nil
  end
end
