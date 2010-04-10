require 'test_helper'

class AchievementUsersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => AchievementUser.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    AchievementUser.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    AchievementUser.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to achievement_user_url(assigns(:achievement_user))
  end
  
  def test_edit
    get :edit, :id => AchievementUser.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    AchievementUser.any_instance.stubs(:valid?).returns(false)
    put :update, :id => AchievementUser.first
    assert_template 'edit'
  end
  
  def test_update_valid
    AchievementUser.any_instance.stubs(:valid?).returns(true)
    put :update, :id => AchievementUser.first
    assert_redirected_to achievement_user_url(assigns(:achievement_user))
  end
  
  def test_destroy
    achievement_user = AchievementUser.first
    delete :destroy, :id => achievement_user
    assert_redirected_to achievement_users_url
    assert !AchievementUser.exists?(achievement_user.id)
  end
end
