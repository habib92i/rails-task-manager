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
    safe_params = params.require(:task).permit(:title, :details, :completed)
    @task = Task.new(safe_params)
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task.update
    @task = Task.find(params[:id])
  end
end
