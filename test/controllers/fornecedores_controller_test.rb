require 'test_helper'

class FornecedoresControllerTest < ActionController::TestCase
  setup do
    @fornecedore = fornecedores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fornecedores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fornecedore" do
    assert_difference('Fornecedore.count') do
      post :create, fornecedore: { contato: @fornecedore.contato, fornecedor: @fornecedore.fornecedor }
    end

    assert_redirected_to fornecedore_path(assigns(:fornecedore))
  end

  test "should show fornecedore" do
    get :show, id: @fornecedore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fornecedore
    assert_response :success
  end

  test "should update fornecedore" do
    patch :update, id: @fornecedore, fornecedore: { contato: @fornecedore.contato, fornecedor: @fornecedore.fornecedor }
    assert_redirected_to fornecedore_path(assigns(:fornecedore))
  end

  test "should destroy fornecedore" do
    assert_difference('Fornecedore.count', -1) do
      delete :destroy, id: @fornecedore
    end

    assert_redirected_to fornecedores_path
  end
end
