require 'test_helper'

class BootstrappedPostsControllerTest < ActionController::TestCase
  setup do
    @bootstrapped_post = bootstrapped_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bootstrapped_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bootstrapped_post" do
    assert_difference('BootstrappedPost.count') do
      post :create, bootstrapped_post: { body: @bootstrapped_post.body, published: @bootstrapped_post.published, title: @bootstrapped_post.title }
    end

    assert_redirected_to bootstrapped_post_path(assigns(:bootstrapped_post))
  end

  test "should show bootstrapped_post" do
    get :show, id: @bootstrapped_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bootstrapped_post
    assert_response :success
  end

  test "should update bootstrapped_post" do
    patch :update, id: @bootstrapped_post, bootstrapped_post: { body: @bootstrapped_post.body, published: @bootstrapped_post.published, title: @bootstrapped_post.title }
    assert_redirected_to bootstrapped_post_path(assigns(:bootstrapped_post))
  end

  test "should destroy bootstrapped_post" do
    assert_difference('BootstrappedPost.count', -1) do
      delete :destroy, id: @bootstrapped_post
    end

    assert_redirected_to bootstrapped_posts_path
  end
end
