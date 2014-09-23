require "rails_helper"

RSpec.describe EstagiosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/estagios").to route_to("estagios#index")
    end

    it "routes to #new" do
      expect(:get => "/estagios/new").to route_to("estagios#new")
    end

    it "routes to #show" do
      expect(:get => "/estagios/1").to route_to("estagios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/estagios/1/edit").to route_to("estagios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/estagios").to route_to("estagios#create")
    end

    it "routes to #update" do
      expect(:put => "/estagios/1").to route_to("estagios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/estagios/1").to route_to("estagios#destroy", :id => "1")
    end

  end
end
