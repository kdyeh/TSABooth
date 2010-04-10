class PerksController < ApplicationController
  def index
    @perks = Perk.all
  end
  
  def show
    @perk = Perk.find(params[:id])
  end
  
  def new
    @perk = Perk.new
  end
  
  def create
    @perk = Perk.new(params[:perk])
    if @perk.save
      flash[:notice] = "Successfully created perk."
      redirect_to @perk
    else
      render :action => 'new'
    end
  end
  
  def edit
    @perk = Perk.find(params[:id])
  end
  
  def update
    @perk = Perk.find(params[:id])
    if @perk.update_attributes(params[:perk])
      flash[:notice] = "Successfully updated perk."
      redirect_to @perk
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @perk = Perk.find(params[:id])
    @perk.destroy
    flash[:notice] = "Successfully destroyed perk."
    redirect_to perks_url
  end
end
