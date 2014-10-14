require 'rails_helper'

RSpec.describe "empregos/edit", :type => :view do
  before(:each) do
    @emprego = assign(:emprego, Emprego.create!(
      :cargo => "MyString",
      :quantidadeDeVagas => 1,
      :salario => 1.5,
      :descricao => "MyString",
      :requisitos => "MyString",
      :pessoa_juridica => nil
    ))
  end

  it "renders the edit emprego form" do
    render

    assert_select "form[action=?][method=?]", emprego_path(@emprego), "post" do

      assert_select "input#emprego_cargo[name=?]", "emprego[cargo]"

      assert_select "input#emprego_quantidadeDeVagas[name=?]", "emprego[quantidadeDeVagas]"

      assert_select "input#emprego_salario[name=?]", "emprego[salario]"

      assert_select "input#emprego_descricao[name=?]", "emprego[descricao]"

      assert_select "input#emprego_requisitos[name=?]", "emprego[requisitos]"

      assert_select "input#emprego_pessoa_juridica_id[name=?]", "emprego[pessoa_juridica_id]"
    end
  end
end
