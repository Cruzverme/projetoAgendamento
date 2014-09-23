require 'rails_helper'

RSpec.describe "empregos/edit", :type => :view do
  before(:each) do
    @emprego = assign(:emprego, Emprego.create!(
      :cargo => "MyString",
      :quantidadeDeVagas => 1,
      :salario => "",
      :descricao => "MyText",
      :requisitos => "MyString",
      :PessoaJuridica => nil
    ))
  end

  it "renders the edit emprego form" do
    render

    assert_select "form[action=?][method=?]", emprego_path(@emprego), "post" do

      assert_select "input#emprego_cargo[name=?]", "emprego[cargo]"

      assert_select "input#emprego_quantidadeDeVagas[name=?]", "emprego[quantidadeDeVagas]"

      assert_select "input#emprego_salario[name=?]", "emprego[salario]"

      assert_select "textarea#emprego_descricao[name=?]", "emprego[descricao]"

      assert_select "input#emprego_requisitos[name=?]", "emprego[requisitos]"

      assert_select "input#emprego_PessoaJuridica_id[name=?]", "emprego[PessoaJuridica_id]"
    end
  end
end
