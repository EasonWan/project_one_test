require 'test_helper'

class MangaListsControllerTest < ActionController::TestCase
  setup do
    @manga_list = manga_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manga_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manga_list" do
    assert_difference('MangaList.count') do
      post :create, manga_list: { name: @manga_list.name }
    end

    assert_redirected_to manga_list_path(assigns(:manga_list))
  end

  test "should show manga_list" do
    get :show, id: @manga_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manga_list
    assert_response :success
  end

  test "should update manga_list" do
    patch :update, id: @manga_list, manga_list: { name: @manga_list.name }
    assert_redirected_to manga_list_path(assigns(:manga_list))
  end

  test "should destroy manga_list" do
    assert_difference('MangaList.count', -1) do
      delete :destroy, id: @manga_list
    end

    assert_redirected_to manga_lists_path
  end
end
