require 'test_helper'

class ResultadosControllerTest < ActionController::TestCase
  setup do
    @resultado = resultados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resultados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resultado" do
    assert_difference('Resultado.count') do
      post :create, resultado: { candidato_id: @resultado.candidato_id, mesa_id: @resultado.mesa_id, votos: @resultado.votos }
    end

    assert_redirected_to resultado_path(assigns(:resultado))
  end

  test "should show resultado" do
    get :show, id: @resultado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resultado
    assert_response :success
  end

  test "should update resultado" do
    patch :update, id: @resultado, resultado: { candidato_id: @resultado.candidato_id, mesa_id: @resultado.mesa_id, votos: @resultado.votos }
    assert_redirected_to resultado_path(assigns(:resultado))
  end

  test "should destroy resultado" do
    assert_difference('Resultado.count', -1) do
      delete :destroy, id: @resultado
    end

    assert_redirected_to resultados_path
  end
end
