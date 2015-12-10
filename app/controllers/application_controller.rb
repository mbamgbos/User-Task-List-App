class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   before_action :get_all_task_lists
  
  layout 'todo_list'
  
  def get_all_task_lists
  @all_task_lists=TaskList.all
  end
  
  before_action :require_login, except: [:index, :show]
 

  
  def require_login
    unless session[:user_id]
      flash[:message] = "You must be logged in to view that page"
      redirect_to login_path
    end
  end
end
