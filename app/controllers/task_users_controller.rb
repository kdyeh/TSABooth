class TaskUsersController < ApplicationController
  def index
    @task_users = TaskUser.all
  end
  
  def show
    @task_user = TaskUser.find(params[:id])
  end
  
  def new
    @task_user = TaskUser.new
  end
  
  def create
    @task_user = TaskUser.new(params[:task_user])
    if @task_user.save
      flash[:notice] = "Successfully created task user."
      redirect_to @task_user
    else
      render :action => 'new'
    end
  end
  
  def edit
    @task_user = TaskUser.find(params[:id])
  end
  
  def update
    @task_user = TaskUser.find(params[:id])
    if @task_user.update_attributes(params[:task_user])
      flash[:notice] = "Successfully updated task user."
      redirect_to @task_user
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @task_user = TaskUser.find(params[:id])
    @task_user.destroy
    flash[:notice] = "Successfully destroyed task user."
    redirect_to task_users_url
  end
end
