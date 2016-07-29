require 'rails_helper'

RSpec.describe "Lancamentos", :type => :request do
  describe "GET /lancamentos" do
    it "works! (now write some real specs)" do
      get lancamentos_path
      expect(response).to have_http_status(200)
    end
  end
end
