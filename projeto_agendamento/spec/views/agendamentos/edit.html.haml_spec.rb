require 'rails_helper'

RSpec.describe "agendamentos/edit", :type => :view do
  before(:each) do
    @agendamento = assign(:agendamento, Agendamento.create!(
      :pessoa_fisica => nil,
      :estagio => nil,
      :emprego => nil
    ))
  end

  it "renders the edit agendamento form" do
    render

    assert_select "form[action=?][method=?]", agendamento_path(@agendamento), "post" do

      assert_select "input#agendamento_pessoa_fisica_id[name=?]", "agendamento[pessoa_fisica_id]"

      assert_select "input#agendamento_estagio_id[name=?]", "agendamento[estagio_id]"

      assert_select "input#agendamento_emprego_id[name=?]", "agendamento[emprego_id]"
    end
  end
end
