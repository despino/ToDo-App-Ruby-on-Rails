class TaskController < ApplicationController

  def index
    @tasks = Task.all
    @task = Task.new
    render('tasks/index.html.erb')
  end
  def mark_done
    @tasks = Task.all
    @task= Task.find(params[:completed])
    render('tasks/index.html.erb')
  end


  def create
    @task = Task.create(params[:task])
    @tasks = Task.all
    render('tasks/index.html.erb')
  end
  # def new
  #   @task = Task.new
  #   render('tasks/new.html.erb')
  # end
  def show
    @task = Task.find(params[:id])
    render('tasks/show.html.erb')
  end
  def edit
    @task = Task.find(params[:id])
    render('tasks/edit.html.erb')
  end
  def update
    @task = Task.find(params[:id])
    @tasks = Task.all
    if @task.update(:name => params[:name])
      render('tasks/index.html.erb')
    # else
    #   render('contacts/edit.html.erb')
    end
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render('tasks/destroy.html.erb')
  end
end
