require 'test_helper'

class TaskUsersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => TaskUser.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    TaskUser.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    TaskUser.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to task_user_url(assigns(:task_user))
  end
  
  def test_edit
    get :edit, :id => TaskUser.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    TaskUser.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TaskUser.first
    assert_template 'edit'
  end
  
  def test_update_valid
    TaskUser.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TaskUser.first
    assert_redirected_to task_user_url(assigns(:task_user))
  end
  
  def test_destroy
    task_user = TaskUser.first
    delete :destroy, :id => task_user
    assert_redirected_to task_users_url
    assert !TaskUser.exists?(task_user.id)
  end
end
