class CreatePessoaFisicas < ActiveRecord::Migration
  def change
    create_table :pessoa_fisicas do |t|
      t.string :nome
      t.date :dataNascimento
      t.string :endereco
      t.integer :cpf
      t.text :curriculo
      t.string :cidade
      t.string :bairro
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
