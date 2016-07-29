require 'rails_helper'

RSpec.describe "Lancamentoprodutos", :type => :request do
  describe "GET /lancamentoprodutos" do
    it "works! (now write some real specs)" do
      get lancamentoprodutos_path
      expect(response).to have_http_status(200)
    end
  end
end
