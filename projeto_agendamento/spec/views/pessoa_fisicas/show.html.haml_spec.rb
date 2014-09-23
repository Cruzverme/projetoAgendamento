require 'rails_helper'

RSpec.describe "pessoa_fisicas/show", :type => :view do
  before(:each) do
    @pessoa_fisica = assign(:pessoa_fisica, PessoaFisica.create!(
      :nomeCompleto => "Nomecompleto",
      :idade => "Idade",
      :dataNascimento => "Datanascimento",
      :endereco => "Endereco",
      :cpf => 1,
      :cidade => "Cidade",
      :bairro => "Bairro",
      :telefone => "Telefone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nomecompleto/)
    expect(rendered).to match(/Idade/)
    expect(rendered).to match(/Datanascimento/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Email/)
  end
end
