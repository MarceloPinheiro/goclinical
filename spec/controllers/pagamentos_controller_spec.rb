require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe PagamentosController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Pagamento. As you add validations to Pagamento, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PagamentosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all pagamentos as @pagamentos" do
      pagamento = Pagamento.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:pagamentos)).to eq([pagamento])
    end
  end

  describe "GET show" do
    it "assigns the requested pagamento as @pagamento" do
      pagamento = Pagamento.create! valid_attributes
      get :show, {:id => pagamento.to_param}, valid_session
      expect(assigns(:pagamento)).to eq(pagamento)
    end
  end

  describe "GET new" do
    it "assigns a new pagamento as @pagamento" do
      get :new, {}, valid_session
      expect(assigns(:pagamento)).to be_a_new(Pagamento)
    end
  end

  describe "GET edit" do
    it "assigns the requested pagamento as @pagamento" do
      pagamento = Pagamento.create! valid_attributes
      get :edit, {:id => pagamento.to_param}, valid_session
      expect(assigns(:pagamento)).to eq(pagamento)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Pagamento" do
        expect {
          post :create, {:pagamento => valid_attributes}, valid_session
        }.to change(Pagamento, :count).by(1)
      end

      it "assigns a newly created pagamento as @pagamento" do
        post :create, {:pagamento => valid_attributes}, valid_session
        expect(assigns(:pagamento)).to be_a(Pagamento)
        expect(assigns(:pagamento)).to be_persisted
      end

      it "redirects to the created pagamento" do
        post :create, {:pagamento => valid_attributes}, valid_session
        expect(response).to redirect_to(Pagamento.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved pagamento as @pagamento" do
        post :create, {:pagamento => invalid_attributes}, valid_session
        expect(assigns(:pagamento)).to be_a_new(Pagamento)
      end

      it "re-renders the 'new' template" do
        post :create, {:pagamento => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested pagamento" do
        pagamento = Pagamento.create! valid_attributes
        put :update, {:id => pagamento.to_param, :pagamento => new_attributes}, valid_session
        pagamento.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested pagamento as @pagamento" do
        pagamento = Pagamento.create! valid_attributes
        put :update, {:id => pagamento.to_param, :pagamento => valid_attributes}, valid_session
        expect(assigns(:pagamento)).to eq(pagamento)
      end

      it "redirects to the pagamento" do
        pagamento = Pagamento.create! valid_attributes
        put :update, {:id => pagamento.to_param, :pagamento => valid_attributes}, valid_session
        expect(response).to redirect_to(pagamento)
      end
    end

    describe "with invalid params" do
      it "assigns the pagamento as @pagamento" do
        pagamento = Pagamento.create! valid_attributes
        put :update, {:id => pagamento.to_param, :pagamento => invalid_attributes}, valid_session
        expect(assigns(:pagamento)).to eq(pagamento)
      end

      it "re-renders the 'edit' template" do
        pagamento = Pagamento.create! valid_attributes
        put :update, {:id => pagamento.to_param, :pagamento => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested pagamento" do
      pagamento = Pagamento.create! valid_attributes
      expect {
        delete :destroy, {:id => pagamento.to_param}, valid_session
      }.to change(Pagamento, :count).by(-1)
    end

    it "redirects to the pagamentos list" do
      pagamento = Pagamento.create! valid_attributes
      delete :destroy, {:id => pagamento.to_param}, valid_session
      expect(response).to redirect_to(pagamentos_url)
    end
  end

end
