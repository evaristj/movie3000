class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
  	if user_signed_in?
  		settings_path
  	elsif admin_user_signed_in?
  		admin_root_path
  	end
  end
end
