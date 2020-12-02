class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def check_admin?
    if user_signed_in?
      unless current_user.isAdmin
        redirect_to static_pages_home_path, alert: "You aren't admin"
      end
    else
      redirect_to user_session_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up, keys: [:name, :age, :avatar]
    devise_parameter_sanitizer.permit :account_update, keys: [:name, :age, :avatar]
  end
end
