class SessionController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def new
    @user = User.first
  end

  def login(user_params)
    User.findby(email: user_params[:email])
    session[:logged_in_user_id] = user.id
    # session = {:logged_in_user_id => user.id}
    session[:message] = "Login Successful"
  end

  def logout
    session[:message] = "Logout Successful"
    session.delete :logged_in_user_id
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
