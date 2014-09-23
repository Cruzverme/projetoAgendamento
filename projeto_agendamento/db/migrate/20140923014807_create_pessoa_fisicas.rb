class CreatePessoaFisicas < ActiveRecord::Migration
  def change
    create_table :pessoa_fisicas do |t|
      t.string :nomeCompleto
      t.string :idade
      t.string :dataNascimento
      t.string :endereco
      t.integer :cpf
      t.string :cidade
      t.string :bairro
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
