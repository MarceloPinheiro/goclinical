require "rails_helper"

RSpec.describe LancamentosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lancamentos").to route_to("lancamentos#index")
    end

    it "routes to #new" do
      expect(:get => "/lancamentos/new").to route_to("lancamentos#new")
    end

    it "routes to #show" do
      expect(:get => "/lancamentos/1").to route_to("lancamentos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lancamentos/1/edit").to route_to("lancamentos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lancamentos").to route_to("lancamentos#create")
    end

    it "routes to #update" do
      expect(:put => "/lancamentos/1").to route_to("lancamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lancamentos/1").to route_to("lancamentos#destroy", :id => "1")
    end

  end
end
