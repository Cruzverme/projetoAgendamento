require 'rails_helper'

RSpec.describe "estagios/new", :type => :view do
  before(:each) do
    assign(:estagio, Estagio.new(
      :cargo => "MyString",
      :quantidadeDeVagas => 1,
      :salario => 1,
      :descricao => "MyText",
      :especificacaoDeVaga => "MyString",
      :pessoa_juridica => nil
    ))
  end

  it "renders new estagio form" do
    render

    assert_select "form[action=?][method=?]", estagios_path, "post" do

      assert_select "input#estagio_cargo[name=?]", "estagio[cargo]"

      assert_select "input#estagio_quantidadeDeVagas[name=?]", "estagio[quantidadeDeVagas]"

      assert_select "input#estagio_salario[name=?]", "estagio[salario]"

      assert_select "textarea#estagio_descricao[name=?]", "estagio[descricao]"

      assert_select "input#estagio_especificacaoDeVaga[name=?]", "estagio[especificacaoDeVaga]"

      assert_select "input#estagio_pessoa_juridica_id[name=?]", "estagio[pessoa_juridica_id]"
    end
  end
end
