require 'rails_helper'

RSpec.describe "PessoaFisicas", :type => :request do
  describe "GET /pessoa_fisicas" do
    it "works! (now write some real specs)" do
      get pessoa_fisicas_path
      expect(response.status).to be(200)
    end
  end
end
