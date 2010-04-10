require 'test_helper'

class PerkUsersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => PerkUser.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    PerkUser.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    PerkUser.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to perk_user_url(assigns(:perk_user))
  end
  
  def test_edit
    get :edit, :id => PerkUser.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    PerkUser.any_instance.stubs(:valid?).returns(false)
    put :update, :id => PerkUser.first
    assert_template 'edit'
  end
  
  def test_update_valid
    PerkUser.any_instance.stubs(:valid?).returns(true)
    put :update, :id => PerkUser.first
    assert_redirected_to perk_user_url(assigns(:perk_user))
  end
  
  def test_destroy
    perk_user = PerkUser.first
    delete :destroy, :id => perk_user
    assert_redirected_to perk_users_url
    assert !PerkUser.exists?(perk_user.id)
  end
end
