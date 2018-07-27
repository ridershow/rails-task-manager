class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(user_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.new.find(user_params)
    @task.update
    redirect_to tasks_path
  end

  private

  def user_params
    params.require(:task).permit(:title, :details)
  end


end
