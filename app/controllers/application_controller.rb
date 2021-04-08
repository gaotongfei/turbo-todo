class ApplicationController < ActionController::Base
  def index
    @todos = Todo.where.not(status: :deleted).order(created_at: :desc)
  end
end
