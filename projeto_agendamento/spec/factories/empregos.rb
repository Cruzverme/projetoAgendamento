# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :emprego do
    cargo "MyString"
    quantidadeDeVagas 1
    salario ""
    descricao "MyText"
    requisitos "MyString"
    PessoaJuridica nil
  end
end
