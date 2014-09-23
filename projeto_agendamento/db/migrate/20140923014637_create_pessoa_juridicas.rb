class CreatePessoaJuridicas < ActiveRecord::Migration
  def change
    create_table :pessoa_juridicas do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :email
      t.string :telefone
      t.string :porte
      t.integer :cnpj
      t.string :cidade

      t.timestamps
    end
  end
end
