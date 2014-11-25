class ApplicationController < ActionController::Base
  
  before_filter :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  # Concerns
  include TokenAuthentication

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  end

end

