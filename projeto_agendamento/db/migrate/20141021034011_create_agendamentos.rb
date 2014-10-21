class CreateAgendamentos < ActiveRecord::Migration
  def change
    create_table :agendamentos do |t|
      t.date :data
      t.time :hora
      t.references :pessoa_fisica, index: true
      t.references :estagio, index: true
      t.references :emprego, index: true

      t.timestamps
    end
  end
end
