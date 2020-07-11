class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # skip_before_action :authenticate_user!, only: [:show, :index]
  # skip_before_action :authenticate_user, only: [:create], raise: false
  protect_from_forgery prepend: true
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    stored_location_for(resource) ||
    if resource.is_a?(User)
      root_path
    else
      super
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :email])
  end
end
