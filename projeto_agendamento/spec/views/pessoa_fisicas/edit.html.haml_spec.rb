require 'rails_helper'

RSpec.describe "pessoa_fisicas/edit", :type => :view do
  before(:each) do
    @pessoa_fisica = assign(:pessoa_fisica, PessoaFisica.create!(
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

  it "renders the edit pessoa_fisica form" do
    render

    assert_select "form[action=?][method=?]", pessoa_fisica_path(@pessoa_fisica), "post" do

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
