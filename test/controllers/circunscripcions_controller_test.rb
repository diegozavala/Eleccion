require 'test_helper'

class CircunscripcionsControllerTest < ActionController::TestCase
  setup do
    @circunscripcion = circunscripcions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:circunscripcions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create circunscripcion" do
    assert_difference('Circunscripcion.count') do
      post :create, circunscripcion: { comuna_id: @circunscripcion.comuna_id, nombre: @circunscripcion.nombre }
    end

    assert_redirected_to circunscripcion_path(assigns(:circunscripcion))
  end

  test "should show circunscripcion" do
    get :show, id: @circunscripcion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @circunscripcion
    assert_response :success
  end

  test "should update circunscripcion" do
    patch :update, id: @circunscripcion, circunscripcion: { comuna_id: @circunscripcion.comuna_id, nombre: @circunscripcion.nombre }
    assert_redirected_to circunscripcion_path(assigns(:circunscripcion))
  end

  test "should destroy circunscripcion" do
    assert_difference('Circunscripcion.count', -1) do
      delete :destroy, id: @circunscripcion
    end

    assert_redirected_to circunscripcions_path
  end
end
