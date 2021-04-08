class ApplicationController < ActionController::Base
  def index
    @todos = Todo.where.not(status: :deleted)
  end
end
