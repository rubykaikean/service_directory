class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :authenticate_admin!
  helper_method :user_is_admin
  helper_method :user_is_business!

  def user_is_business!
    current_user.user_type == "1"
  end

  def user_is_admin
    if user_signed_in?
      current_user.is_admin == true
    end
  end 

  def authenticate_admin!
    unless user_is_admin
      flash[:alert] = "You are not unthorizate!"
      redirect_to root_url
    end
  end
  protect_from_forgery with: :exception



  def after_sign_in_path_for(resource)
      if user_signed_in?
        company_path(current_user.id)
      end
  end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) << :name
  # end
end
