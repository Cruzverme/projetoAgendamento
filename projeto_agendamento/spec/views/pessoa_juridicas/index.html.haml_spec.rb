require 'rails_helper'

RSpec.describe "pessoa_juridicas/index", :type => :view do
  before(:each) do
    assign(:pessoa_juridicas, [
      PessoaJuridica.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :email => "Email",
        :telefone => "Telefone",
        :porte => "Porte",
        :cnpj => 1,
        :cidade => "Cidade"
      ),
      PessoaJuridica.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :email => "Email",
        :telefone => "Telefone",
        :porte => "Porte",
        :cnpj => 1,
        :cidade => "Cidade"
      )
    ])
  end

  it "renders a list of pessoa_juridicas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Porte".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
  end
end
