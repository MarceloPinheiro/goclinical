require 'rails_helper'

RSpec.describe AprovacaoController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET aprovacao" do
    it "returns http success" do
      get :aprovacao
      expect(response).to have_http_status(:success)
    end
  end

end
