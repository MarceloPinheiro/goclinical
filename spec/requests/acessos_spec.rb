require 'rails_helper'

RSpec.describe "Acessos", :type => :request do
  describe "GET /acessos" do
    it "works! (now write some real specs)" do
      get acessos_path
      expect(response).to have_http_status(200)
    end
  end
end
