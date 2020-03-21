class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(
        :first_name, :last_name,
        :email, :password, :password_confirmation, :current_password
      )
    end

    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(
        :first_name, :last_name,
        :email, :password, :password_confirmation, :current_password
      )
    end
  end

  private

  def owner?(object)
    unless current_user == object.user
      redirect_back fallback_location: root_path, notice: 'User is not owner'
    end
  end
end
