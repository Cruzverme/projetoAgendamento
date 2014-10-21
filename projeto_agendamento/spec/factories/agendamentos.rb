# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :agendamento do
    data "2014-10-21"
    hora "2014-10-21 01:40:11"
    pessoa_fisica nil
    estagio nil
    emprego nil
  end
end
