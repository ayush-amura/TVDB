class ApplicationController < ActionController::Base    
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    attributes = [:name, :age,:contact_no, :type]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    # devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end

 #  def after_sign_in_path_for(resource)
 #  	current_user_path
	# end

end