require 'test_helper'

class PerksControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Perk.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Perk.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Perk.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to perk_url(assigns(:perk))
  end
  
  def test_edit
    get :edit, :id => Perk.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Perk.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Perk.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Perk.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Perk.first
    assert_redirected_to perk_url(assigns(:perk))
  end
  
  def test_destroy
    perk = Perk.first
    delete :destroy, :id => perk
    assert_redirected_to perks_url
    assert !Perk.exists?(perk.id)
  end
end
