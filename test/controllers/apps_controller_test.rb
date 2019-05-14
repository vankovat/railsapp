require 'test_helper'

class AppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app = App.create!(name:'Neco')
  end

  test "should get index" do
    get apps_url
    assert_response :success
  end

  test "should get new" do
    get new_app_url
    assert_response :success
  end

  test "should create app" do
    assert_difference('App.count') do
      post apps_url, params: { app: { name:'Neco' } }
    end

    assert_redirected_to app_url(App.last)
  end

  test "should show app" do
    get app_url(@app)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_url(@app)
    assert_response :success
  end

  test "should update app" do
    patch app_url(@app), params: { app: { name:'Neco' } }
    assert_redirected_to app_url(@app)
  end

  test "should destroy app" do
    assert_difference('App.count', -1) do
      delete app_url(@app)
    end

    assert_redirected_to apps_url
  end
end
