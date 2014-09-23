require 'rails_helper'

RSpec.describe "pessoa_juridicas/new", :type => :view do
  before(:each) do
    assign(:pessoa_juridica, PessoaJuridica.new(
      :nome => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :email => "MyString",
      :telefone => "MyString",
      :porte => "MyString",
      :cnpj => 1,
      :cidade => "MyString"
    ))
  end

  it "renders new pessoa_juridica form" do
    render

    assert_select "form[action=?][method=?]", pessoa_juridicas_path, "post" do

      assert_select "input#pessoa_juridica_nome[name=?]", "pessoa_juridica[nome]"

      assert_select "input#pessoa_juridica_endereco[name=?]", "pessoa_juridica[endereco]"

      assert_select "input#pessoa_juridica_bairro[name=?]", "pessoa_juridica[bairro]"

      assert_select "input#pessoa_juridica_email[name=?]", "pessoa_juridica[email]"

      assert_select "input#pessoa_juridica_telefone[name=?]", "pessoa_juridica[telefone]"

      assert_select "input#pessoa_juridica_porte[name=?]", "pessoa_juridica[porte]"

      assert_select "input#pessoa_juridica_cnpj[name=?]", "pessoa_juridica[cnpj]"

      assert_select "input#pessoa_juridica_cidade[name=?]", "pessoa_juridica[cidade]"
    end
  end
end
