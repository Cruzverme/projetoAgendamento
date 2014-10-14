require 'rails_helper'

RSpec.describe "empregos/show", :type => :view do
  before(:each) do
    @emprego = assign(:emprego, Emprego.create!(
      :cargo => "Cargo",
      :quantidadeDeVagas => 1,
      :salario => 1.5,
      :descricao => "Descricao",
      :requisitos => "Requisitos",
      :pessoa_juridica => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cargo/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/Requisitos/)
    expect(rendered).to match(//)
  end
end
