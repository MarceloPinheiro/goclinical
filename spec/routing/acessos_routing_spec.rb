require "rails_helper"

RSpec.describe AcessosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/acessos").to route_to("acessos#index")
    end

    it "routes to #new" do
      expect(:get => "/acessos/new").to route_to("acessos#new")
    end

    it "routes to #show" do
      expect(:get => "/acessos/1").to route_to("acessos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/acessos/1/edit").to route_to("acessos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/acessos").to route_to("acessos#create")
    end

    it "routes to #update" do
      expect(:put => "/acessos/1").to route_to("acessos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/acessos/1").to route_to("acessos#destroy", :id => "1")
    end

  end
end
