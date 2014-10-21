require 'rails_helper'

RSpec.describe "pessoa_fisicas/index", :type => :view do
  before(:each) do
    assign(:pessoa_fisicas, [
      PessoaFisica.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cpf => 1,
        :curriculo => "MyText",
        :cidade => "Cidade",
        :bairro => "Bairro",
        :telefone => "Telefone",
        :email => "Email"
      ),
      PessoaFisica.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cpf => 1,
        :curriculo => "MyText",
        :cidade => "Cidade",
        :bairro => "Bairro",
        :telefone => "Telefone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of pessoa_fisicas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
