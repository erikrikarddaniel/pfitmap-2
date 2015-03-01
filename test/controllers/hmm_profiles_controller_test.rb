require 'test_helper'

class HmmProfilesControllerTest < ActionController::TestCase
  setup do
    @hmm_profile = hmm_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hmm_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hmm_profile" do
    assert_difference('HmmProfile.count') do
      post :create, hmm_profile: { desc: @hmm_profile.desc, hmm_profile_id: @hmm_profile.hmm_profile_id, name: @hmm_profile.name, rank: @hmm_profile.rank }
    end

    assert_redirected_to hmm_profile_path(assigns(:hmm_profile))
  end

  test "should show hmm_profile" do
    get :show, id: @hmm_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hmm_profile
    assert_response :success
  end

  test "should update hmm_profile" do
    patch :update, id: @hmm_profile, hmm_profile: { desc: @hmm_profile.desc, hmm_profile_id: @hmm_profile.hmm_profile_id, name: @hmm_profile.name, rank: @hmm_profile.rank }
    assert_redirected_to hmm_profile_path(assigns(:hmm_profile))
  end

  test "should destroy hmm_profile" do
    assert_difference('HmmProfile.count', -1) do
      delete :destroy, id: @hmm_profile
    end

    assert_redirected_to hmm_profiles_path
  end
end
