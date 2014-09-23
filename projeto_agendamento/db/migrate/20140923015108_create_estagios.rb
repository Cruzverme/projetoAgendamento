class CreateEstagios < ActiveRecord::Migration
  def change
    create_table :estagios do |t|
      t.string :cargo
      t.integer :quantidadeDeVagas
      t.integer :salario
      t.text :descricao
      t.string :especificacaoDeVAga
      t.references :PessoaJuridica, index: true

      t.timestamps
    end
  end
end
