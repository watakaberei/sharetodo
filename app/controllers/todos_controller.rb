class TodosController < ApplicationController

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.user_id = current_user.id
    @todo.save
    redirect_to todo_path
  end

  def index
  end

  def show
  end

  def edit
  end


  private

  def  todo_params
    params.require(:todo).permit(:title, :body)
  end
end
