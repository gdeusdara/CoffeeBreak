module SessaoHelper
  def current_user
      @current_user ||= Usuario.find_by_id(session[:usuario])
  end
  def logged_in?
    current_user != nil
  end
end
