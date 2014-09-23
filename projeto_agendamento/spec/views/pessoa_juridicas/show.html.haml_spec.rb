require 'rails_helper'

RSpec.describe "pessoa_juridicas/show", :type => :view do
  before(:each) do
    @pessoa_juridica = assign(:pessoa_juridica, PessoaJuridica.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :bairro => "Bairro",
      :email => "Email",
      :telefone => "Telefone",
      :porte => "Porte",
      :cnpj => 1,
      :cidade => "Cidade"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Porte/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Cidade/)
  end
end
