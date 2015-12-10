class LoginController < ApplicationController
  def index
   @user = User.find_by (session[:user_id])
	<ol>
			<% @all_tasks.each do | task | %>
				<li><%= link_to tasks.title, task %></li>
			<% end %>
	</ol>
  end

  def authenticate
  
  
    # check for user in the database
    user = User.find_by(username: params[:username], password: params[:password])

    # if user is found set session, if not redirect to login
    if user
      session[:user_id] = user.id
      flash[:message] = "You have been logged in."
      redirect_to home#index
    else
      flash[:message] = "You have not been logged in. User can't be found"
      redirect_to login_path
    end
  
  end

 def logout
    #delete session by setting user_id to nil
    session[:user_id] = nil
    flash[:message] = "You have been logged out"
    redirect_to login_path
end
end
