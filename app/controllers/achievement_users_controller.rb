class AchievementUsersController < ApplicationController
  def index
    @achievement_users = AchievementUser.all
  end
  
  def show
    @achievement_user = AchievementUser.find(params[:id])
  end
  
  def new
    @achievement_user = AchievementUser.new
  end
  
  def create
    @achievement_user = AchievementUser.new(params[:achievement_user])
    if @achievement_user.save
      flash[:notice] = "Successfully created achievement user."
      redirect_to @achievement_user
    else
      render :action => 'new'
    end
  end
  
  def edit
    @achievement_user = AchievementUser.find(params[:id])
  end
  
  def update
    @achievement_user = AchievementUser.find(params[:id])
    if @achievement_user.update_attributes(params[:achievement_user])
      flash[:notice] = "Successfully updated achievement user."
      redirect_to @achievement_user
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @achievement_user = AchievementUser.find(params[:id])
    @achievement_user.destroy
    flash[:notice] = "Successfully destroyed achievement user."
    redirect_to achievement_users_url
  end
end
