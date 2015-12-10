class HomeController < ProtectedController
  def index
  @user = User.find(session[:user_id])
  end
  
  
end
