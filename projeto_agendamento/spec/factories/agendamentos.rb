# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :agendamento do
    data "2014-09-22"
    hora "2014-09-22 18:54:40"
    Estagio nil
    Emprego nil
    PessoaFisica nil
  end
end
