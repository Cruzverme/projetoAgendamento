require 'rails_helper'

RSpec.describe "empregos/index", :type => :view do
  before(:each) do
    assign(:empregos, [
      Emprego.create!(
        :cargo => "Cargo",
        :quantidadeDeVagas => 1,
        :salario => "",
        :descricao => "MyText",
        :requisitos => "Requisitos",
        :PessoaJuridica => nil
      ),
      Emprego.create!(
        :cargo => "Cargo",
        :quantidadeDeVagas => 1,
        :salario => "",
        :descricao => "MyText",
        :requisitos => "Requisitos",
        :PessoaJuridica => nil
      )
    ])
  end

  it "renders a list of empregos" do
    render
    assert_select "tr>td", :text => "Cargo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Requisitos".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
