class Agendamento < ActiveRecord::Base
  belongs_to :Estagio
  belongs_to :Emprego
  belongs_to :PessoaFisica
end
