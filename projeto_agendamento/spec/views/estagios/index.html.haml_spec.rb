require 'rails_helper'

RSpec.describe "estagios/index", :type => :view do
  before(:each) do
    assign(:estagios, [
      Estagio.create!(
        :cargo => "Cargo",
        :quantidadeDeVagas => 1,
        :salario => 2,
        :descricao => "MyText",
        :especificacaoDeVAga => "Especificacaodevaga",
        :PessoaJuridica => nil
      ),
      Estagio.create!(
        :cargo => "Cargo",
        :quantidadeDeVagas => 1,
        :salario => 2,
        :descricao => "MyText",
        :especificacaoDeVAga => "Especificacaodevaga",
        :PessoaJuridica => nil
      )
    ])
  end

  it "renders a list of estagios" do
    render
    assert_select "tr>td", :text => "Cargo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Especificacaodevaga".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
