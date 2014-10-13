require 'rails_helper'

RSpec.describe "estagios/show", :type => :view do
  before(:each) do
    @estagio = assign(:estagio, Estagio.create!(
      :cargo => "Cargo",
      :quantidadeDeVagas => 1,
      :salario => 2,
      :descricao => "MyText",
      :especificacaoDeVaga => "Especificacaodevaga",
      :pessoa_juridica => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cargo/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Especificacaodevaga/)
    expect(rendered).to match(//)
  end
end
