require 'rails_helper'

RSpec.describe "Empregos", :type => :request do
  describe "GET /empregos" do
    it "works! (now write some real specs)" do
      get empregos_path
      expect(response.status).to be(200)
    end
  end
end
