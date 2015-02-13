require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "pfitmap::about"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "pfitmap::contact"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select 'title', 'pfitmap::home'
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select 'title', 'pfitmap::help'
  end
end
