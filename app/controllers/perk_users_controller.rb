class PerkUsersController < ApplicationController
  def index
    @perk_users = PerkUser.all
  end
  
  def show
    @perk_user = PerkUser.find(params[:id])
  end
  
  def new
    @perk_user = PerkUser.new
  end
  
  def create
    @perk_user = PerkUser.new(params[:perk_user])
    if @perk_user.save
      flash[:notice] = "Successfully created perk user."
      redirect_to @perk_user
    else
      render :action => 'new'
    end
  end
  
  def edit
    @perk_user = PerkUser.find(params[:id])
  end
  
  def update
    @perk_user = PerkUser.find(params[:id])
    if @perk_user.update_attributes(params[:perk_user])
      flash[:notice] = "Successfully updated perk user."
      redirect_to @perk_user
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @perk_user = PerkUser.find(params[:id])
    @perk_user.destroy
    flash[:notice] = "Successfully destroyed perk user."
    redirect_to perk_users_url
  end
end
