class CreateEmpregos < ActiveRecord::Migration
  def change
    create_table :empregos do |t|
      t.string :cargo
      t.integer :quantidadeDeVagas
      t.float :salario
      t.string :descricao
      t.string :requisitos
      t.references :pessoa_juridica, index: true

      t.timestamps
    end
  end
end
