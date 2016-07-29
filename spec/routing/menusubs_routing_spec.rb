require "rails_helper"

RSpec.describe MenusubsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/menusubs").to route_to("menusubs#index")
    end

    it "routes to #new" do
      expect(:get => "/menusubs/new").to route_to("menusubs#new")
    end

    it "routes to #show" do
      expect(:get => "/menusubs/1").to route_to("menusubs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/menusubs/1/edit").to route_to("menusubs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/menusubs").to route_to("menusubs#create")
    end

    it "routes to #update" do
      expect(:put => "/menusubs/1").to route_to("menusubs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/menusubs/1").to route_to("menusubs#destroy", :id => "1")
    end

  end
end
