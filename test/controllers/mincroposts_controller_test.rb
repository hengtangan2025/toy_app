require 'test_helper'

class MincropostsControllerTest < ActionController::TestCase
  setup do
    @mincropost = mincroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mincroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mincropost" do
    assert_difference('Mincropost.count') do
      post :create, mincropost: { content: @mincropost.content, user_id: @mincropost.user_id }
    end

    assert_redirected_to mincropost_path(assigns(:mincropost))
  end

  test "should show mincropost" do
    get :show, id: @mincropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mincropost
    assert_response :success
  end

  test "should update mincropost" do
    patch :update, id: @mincropost, mincropost: { content: @mincropost.content, user_id: @mincropost.user_id }
    assert_redirected_to mincropost_path(assigns(:mincropost))
  end

  test "should destroy mincropost" do
    assert_difference('Mincropost.count', -1) do
      delete :destroy, id: @mincropost
    end

    assert_redirected_to mincroposts_path
  end
end
