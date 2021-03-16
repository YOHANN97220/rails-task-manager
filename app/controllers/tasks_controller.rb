class TasksController < ApplicationController
  before_action :get_task, only: [:show, :edit, :update, :destroy]
  def index
    @task = Task.all
  end

  def show
    get_task
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.create(task_params)
  end
  def edit
  end
  def update
  end
  def destroy
    get_task
    @task.destroy
    redirect_to tasks_path
  end

private

  def task_params
    params(:task).permit(:title, :details)
  end

  def get_task
    @task = Task.find(params[:id])
  end
end
