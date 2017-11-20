class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :store_location
  
  def store_location
    unless params[:controller] == "devise/sessions"
      url = admin_home_index_url
      session[:user_return_to] = url
    end
  end

  def stored_location_for(resource_or_scope)
    session[:user_return_to] || super
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || root_path
  end

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    home_login_url
  end

end
