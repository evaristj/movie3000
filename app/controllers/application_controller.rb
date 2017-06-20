class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
  	case resource
    when User
      index_path
    when AdminUser
      admin_dashboard_path
    end
  end
end
