class ApplicationController < ActionController::Base
  # Concerns
  include TokenAuthentication

  before_action :configure_permitted_parameters, if: :devise_controller?

  respond_to :html, :xml, :json

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  end

end

