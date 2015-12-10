class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   before_action :get_all_task_lists
  
  layout 'todo_list'
  
  def get_all_task_lists
  @all_task_lists=TaskList.all
  end
  

end
