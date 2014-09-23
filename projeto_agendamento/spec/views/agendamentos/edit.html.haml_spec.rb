require 'rails_helper'

RSpec.describe "agendamentos/edit", :type => :view do
  before(:each) do
    @agendamento = assign(:agendamento, Agendamento.create!(
      :Estagio => nil,
      :Emprego => nil,
      :PessoaFisica => nil
    ))
  end

  it "renders the edit agendamento form" do
    render

    assert_select "form[action=?][method=?]", agendamento_path(@agendamento), "post" do

      assert_select "input#agendamento_Estagio_id[name=?]", "agendamento[Estagio_id]"

      assert_select "input#agendamento_Emprego_id[name=?]", "agendamento[Emprego_id]"

      assert_select "input#agendamento_PessoaFisica_id[name=?]", "agendamento[PessoaFisica_id]"
    end
  end
end
