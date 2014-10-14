require "rails_helper"

RSpec.describe EmpregosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/empregos").to route_to("empregos#index")
    end

    it "routes to #new" do
      expect(:get => "/empregos/new").to route_to("empregos#new")
    end

    it "routes to #show" do
      expect(:get => "/empregos/1").to route_to("empregos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/empregos/1/edit").to route_to("empregos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/empregos").to route_to("empregos#create")
    end

    it "routes to #update" do
      expect(:put => "/empregos/1").to route_to("empregos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/empregos/1").to route_to("empregos#destroy", :id => "1")
    end

  end
end
