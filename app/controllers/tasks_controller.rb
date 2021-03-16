class TasksController < ApplicationController
  before_action :get_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
    get_task
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.create(task_params)
    @task.save
    redirect_to task_path(@task)
  end
  def edit
    get_task
  end

  def update
    get_task
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    get_task
    @task.destroy
    redirect_to tasks_path
  end

private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def get_task
    @task = Task.find(params[:id])
  end
end
