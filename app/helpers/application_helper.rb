module ApplicationHelper

  def current_user
    if session[:logged_in_user_id]
      User.find(session[:logged_in_user_id])
    else
      nil
    end
  end

end
