class SettingsController < ApplicationController
	layout "admin"

  def index
    if current_user.setting==nil
        @setting = Setting.create(user_id: current_user.id)
        @setting.save
    end
    @user = current_user.setting
    # @user =User.includes(:setting).where('settings.user_id' => current_user.id)
    # @user = AdminUser.find(current_user.id, :include => :setting)
  end

	def create
    @setting = Setting.create(user_id: current_user.id, language: 
    	params[:language], country: params[:country])
 
	   if @setting.save
		redirect_to settings_path
	  else
		render :new
	  end
  end

  def new
    @setting = Setting.new
  end

	def show
	  @setting = Setting.find(params[:id])
	end

# a partir de aqui es prueba
	def edit
  @setting = Setting.find(params[:id])
	end
 
	def update
 	 	@setting = Setting.find(params[:id])
 
  	if @setting.update_attributes(setting_params)
   	redirect_to settings_path
  	else
		render :index
  	end
	end
 
	private
		def setting_params
  	params.require(:setting).permit(:country, :language)
	end


end
