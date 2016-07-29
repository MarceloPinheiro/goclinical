require "rails_helper"

RSpec.describe LancamentoprodutosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lancamentoprodutos").to route_to("lancamentoprodutos#index")
    end

    it "routes to #new" do
      expect(:get => "/lancamentoprodutos/new").to route_to("lancamentoprodutos#new")
    end

    it "routes to #show" do
      expect(:get => "/lancamentoprodutos/1").to route_to("lancamentoprodutos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lancamentoprodutos/1/edit").to route_to("lancamentoprodutos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lancamentoprodutos").to route_to("lancamentoprodutos#create")
    end

    it "routes to #update" do
      expect(:put => "/lancamentoprodutos/1").to route_to("lancamentoprodutos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lancamentoprodutos/1").to route_to("lancamentoprodutos#destroy", :id => "1")
    end

  end
end
