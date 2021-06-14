class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!
    skip_before_action :authenticate_user!, :only => [:home]
    skip_before_action :authenticate_user!, :only => [:residential]
    skip_before_action :authenticate_user!, :only => [:commercial]
    skip_before_action :authenticate_user!, :only => [:quotes]
    protected

    #load_and_authorize_resource
    #ROLES = %i[admin moderator author banned]

    #def user_params
      #params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
    #end
    
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    end
  end
