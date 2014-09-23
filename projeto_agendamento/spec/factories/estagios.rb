# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :estagio do
    cargo "MyString"
    quantidadeDeVagas 1
    salario 1
    descricao "MyText"
    especificacaoDeVAga "MyString"
    PessoaJuridica nil
  end
end
