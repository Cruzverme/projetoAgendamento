require 'rails_helper'

RSpec.describe "agendamentos/new", :type => :view do
  before(:each) do
    assign(:agendamento, Agendamento.new(
      :Estagio => nil,
      :Emprego => nil,
      :PessoaFisica => nil
    ))
  end

  it "renders new agendamento form" do
    render

    assert_select "form[action=?][method=?]", agendamentos_path, "post" do

      assert_select "input#agendamento_Estagio_id[name=?]", "agendamento[Estagio_id]"

      assert_select "input#agendamento_Emprego_id[name=?]", "agendamento[Emprego_id]"

      assert_select "input#agendamento_PessoaFisica_id[name=?]", "agendamento[PessoaFisica_id]"
    end
  end
end
