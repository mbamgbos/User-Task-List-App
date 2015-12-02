class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   before-action :get_all_task_lists
  
  layout 'todo_list'
  
  def get_all_task_lists
  @all_task_lists=task_lists.all
  end
end
