require 'rails_helper'

RSpec.describe "pessoa_fisicas/new", :type => :view do
  before(:each) do
    assign(:pessoa_fisica, PessoaFisica.new(
      :nome => "MyString",
      :endereco => "MyString",
      :cpf => 1,
      :curriculo => "MyText",
      :cidade => "MyString",
      :bairro => "MyString",
      :telefone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new pessoa_fisica form" do
    render

    assert_select "form[action=?][method=?]", pessoa_fisicas_path, "post" do

      assert_select "input#pessoa_fisica_nome[name=?]", "pessoa_fisica[nome]"

      assert_select "input#pessoa_fisica_endereco[name=?]", "pessoa_fisica[endereco]"

      assert_select "input#pessoa_fisica_cpf[name=?]", "pessoa_fisica[cpf]"

      assert_select "textarea#pessoa_fisica_curriculo[name=?]", "pessoa_fisica[curriculo]"

      assert_select "input#pessoa_fisica_cidade[name=?]", "pessoa_fisica[cidade]"

      assert_select "input#pessoa_fisica_bairro[name=?]", "pessoa_fisica[bairro]"

      assert_select "input#pessoa_fisica_telefone[name=?]", "pessoa_fisica[telefone]"

      assert_select "input#pessoa_fisica_email[name=?]", "pessoa_fisica[email]"
    end
  end
end
