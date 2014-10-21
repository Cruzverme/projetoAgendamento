require 'rails_helper'

RSpec.describe "pessoa_fisicas/show", :type => :view do
  before(:each) do
    @pessoa_fisica = assign(:pessoa_fisica, PessoaFisica.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :cpf => 1,
      :curriculo => "MyText",
      :cidade => "Cidade",
      :bairro => "Bairro",
      :telefone => "Telefone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Email/)
  end
end
