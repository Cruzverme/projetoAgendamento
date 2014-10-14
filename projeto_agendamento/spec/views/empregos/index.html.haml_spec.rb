require 'rails_helper'

RSpec.describe "empregos/index", :type => :view do
  before(:each) do
    assign(:empregos, [
      Emprego.create!(
        :cargo => "Cargo",
        :quantidadeDeVagas => 1,
        :salario => 1.5,
        :descricao => "Descricao",
        :requisitos => "Requisitos",
        :pessoa_juridica => nil
      ),
      Emprego.create!(
        :cargo => "Cargo",
        :quantidadeDeVagas => 1,
        :salario => 1.5,
        :descricao => "Descricao",
        :requisitos => "Requisitos",
        :pessoa_juridica => nil
      )
    ])
  end

  it "renders a list of empregos" do
    render
    assert_select "tr>td", :text => "Cargo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Requisitos".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
