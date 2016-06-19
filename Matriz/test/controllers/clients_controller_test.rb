require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { CEP: @client.CEP, CNPJ: @client.CNPJ, CPF: @client.CPF, RG: @client.RG, adrees_number: @client.adrees_number, adress: @client.adress, adress_complement: @client.adress_complement, city: @client.city, company_name: @client.company_name, email: @client.email, marital_status: @client.marital_status, name: @client.name, neighborhood: @client.neighborhood, state: @client.state, trading_name: @client.trading_name }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { CEP: @client.CEP, CNPJ: @client.CNPJ, CPF: @client.CPF, RG: @client.RG, adrees_number: @client.adrees_number, adress: @client.adress, adress_complement: @client.adress_complement, city: @client.city, company_name: @client.company_name, email: @client.email, marital_status: @client.marital_status, name: @client.name, neighborhood: @client.neighborhood, state: @client.state, trading_name: @client.trading_name }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
