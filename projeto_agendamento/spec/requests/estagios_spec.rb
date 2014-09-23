require 'rails_helper'

RSpec.describe "Estagios", :type => :request do
  describe "GET /estagios" do
    it "works! (now write some real specs)" do
      get estagios_path
      expect(response.status).to be(200)
    end
  end
end
