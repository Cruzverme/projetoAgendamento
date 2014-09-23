class CreateAgendamentos < ActiveRecord::Migration
  def change
    create_table :agendamentos do |t|
      t.date :data
      t.time :hora
      t.references :Estagio, index: true
      t.references :Emprego, index: true
      t.references :PessoaFisica, index: true

      t.timestamps
    end
  end
end
