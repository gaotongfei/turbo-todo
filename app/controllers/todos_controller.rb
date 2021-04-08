class TodosController < ApplicationController
  def create
    @todo = Todo.create(todo_params)
    respond_to do |format|
      format.turbo_stream
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:name)
  end
end
