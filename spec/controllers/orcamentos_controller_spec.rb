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

RSpec.describe OrcamentosController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Orcamento. As you add validations to Orcamento, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OrcamentosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all orcamentos as @orcamentos" do
      orcamento = Orcamento.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:orcamentos)).to eq([orcamento])
    end
  end

  describe "GET show" do
    it "assigns the requested orcamento as @orcamento" do
      orcamento = Orcamento.create! valid_attributes
      get :show, {:id => orcamento.to_param}, valid_session
      expect(assigns(:orcamento)).to eq(orcamento)
    end
  end

  describe "GET new" do
    it "assigns a new orcamento as @orcamento" do
      get :new, {}, valid_session
      expect(assigns(:orcamento)).to be_a_new(Orcamento)
    end
  end

  describe "GET edit" do
    it "assigns the requested orcamento as @orcamento" do
      orcamento = Orcamento.create! valid_attributes
      get :edit, {:id => orcamento.to_param}, valid_session
      expect(assigns(:orcamento)).to eq(orcamento)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Orcamento" do
        expect {
          post :create, {:orcamento => valid_attributes}, valid_session
        }.to change(Orcamento, :count).by(1)
      end

      it "assigns a newly created orcamento as @orcamento" do
        post :create, {:orcamento => valid_attributes}, valid_session
        expect(assigns(:orcamento)).to be_a(Orcamento)
        expect(assigns(:orcamento)).to be_persisted
      end

      it "redirects to the created orcamento" do
        post :create, {:orcamento => valid_attributes}, valid_session
        expect(response).to redirect_to(Orcamento.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved orcamento as @orcamento" do
        post :create, {:orcamento => invalid_attributes}, valid_session
        expect(assigns(:orcamento)).to be_a_new(Orcamento)
      end

      it "re-renders the 'new' template" do
        post :create, {:orcamento => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested orcamento" do
        orcamento = Orcamento.create! valid_attributes
        put :update, {:id => orcamento.to_param, :orcamento => new_attributes}, valid_session
        orcamento.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested orcamento as @orcamento" do
        orcamento = Orcamento.create! valid_attributes
        put :update, {:id => orcamento.to_param, :orcamento => valid_attributes}, valid_session
        expect(assigns(:orcamento)).to eq(orcamento)
      end

      it "redirects to the orcamento" do
        orcamento = Orcamento.create! valid_attributes
        put :update, {:id => orcamento.to_param, :orcamento => valid_attributes}, valid_session
        expect(response).to redirect_to(orcamento)
      end
    end

    describe "with invalid params" do
      it "assigns the orcamento as @orcamento" do
        orcamento = Orcamento.create! valid_attributes
        put :update, {:id => orcamento.to_param, :orcamento => invalid_attributes}, valid_session
        expect(assigns(:orcamento)).to eq(orcamento)
      end

      it "re-renders the 'edit' template" do
        orcamento = Orcamento.create! valid_attributes
        put :update, {:id => orcamento.to_param, :orcamento => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested orcamento" do
      orcamento = Orcamento.create! valid_attributes
      expect {
        delete :destroy, {:id => orcamento.to_param}, valid_session
      }.to change(Orcamento, :count).by(-1)
    end

    it "redirects to the orcamentos list" do
      orcamento = Orcamento.create! valid_attributes
      delete :destroy, {:id => orcamento.to_param}, valid_session
      expect(response).to redirect_to(orcamentos_url)
    end
  end

end
