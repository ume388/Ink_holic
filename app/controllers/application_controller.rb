class ApplicationController < ActionController::Base
  before_action :configure_permitted_parametes, if: :devise_controller?
  
  protected
  
  def configure_permitted_parametes
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
  end
  
end
