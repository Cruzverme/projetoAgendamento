require 'rails_helper'

RSpec.describe "estagios/edit", :type => :view do
  before(:each) do
    @estagio = assign(:estagio, Estagio.create!(
      :cargo => "MyString",
      :quantidadeDeVagas => 1,
      :salario => 1,
      :descricao => "MyText",
      :especificacaoDeVAga => "MyString",
      :PessoaJuridica => nil
    ))
  end

  it "renders the edit estagio form" do
    render

    assert_select "form[action=?][method=?]", estagio_path(@estagio), "post" do

      assert_select "input#estagio_cargo[name=?]", "estagio[cargo]"

      assert_select "input#estagio_quantidadeDeVagas[name=?]", "estagio[quantidadeDeVagas]"

      assert_select "input#estagio_salario[name=?]", "estagio[salario]"

      assert_select "textarea#estagio_descricao[name=?]", "estagio[descricao]"

      assert_select "input#estagio_especificacaoDeVAga[name=?]", "estagio[especificacaoDeVAga]"

      assert_select "input#estagio_PessoaJuridica_id[name=?]", "estagio[PessoaJuridica_id]"
    end
  end
end
