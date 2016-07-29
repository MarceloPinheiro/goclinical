require 'rails_helper'

RSpec.describe "Pagamentos", :type => :request do
  describe "GET /pagamentos" do
    it "works! (now write some real specs)" do
      get pagamentos_path
      expect(response).to have_http_status(200)
    end
  end
end
