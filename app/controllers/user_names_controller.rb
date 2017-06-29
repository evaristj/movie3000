class UserNamesController < InheritedResources::Base

  private

    def user_name_params
      params.require(:user_name).permit(:email, :login)
    end
end

