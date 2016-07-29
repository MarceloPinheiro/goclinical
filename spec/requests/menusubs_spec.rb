require 'rails_helper'

RSpec.describe "Menusubs", :type => :request do
  describe "GET /menusubs" do
    it "works! (now write some real specs)" do
      get menusubs_path
      expect(response).to have_http_status(200)
    end
  end
end
