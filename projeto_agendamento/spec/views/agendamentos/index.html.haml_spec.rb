require 'rails_helper'

RSpec.describe "agendamentos/index", :type => :view do
  before(:each) do
    assign(:agendamentos, [
      Agendamento.create!(
        :pessoa_fisica => nil,
        :estagio => nil,
        :emprego => nil
      ),
      Agendamento.create!(
        :pessoa_fisica => nil,
        :estagio => nil,
        :emprego => nil
      )
    ])
  end

  it "renders a list of agendamentos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
