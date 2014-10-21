require 'rails_helper'

RSpec.describe "agendamentos/show", :type => :view do
  before(:each) do
    @agendamento = assign(:agendamento, Agendamento.create!(
      :pessoa_fisica => nil,
      :estagio => nil,
      :emprego => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
