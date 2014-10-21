class Agendamento < ActiveRecord::Base
  belongs_to :pessoa_fisica
  belongs_to :estagio
  belongs_to :emprego
end
