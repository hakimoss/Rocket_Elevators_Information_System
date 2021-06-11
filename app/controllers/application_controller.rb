class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!
    skip_before_action :authenticate_user!, :only => [:home]
    skip_before_action :authenticate_user!, :only => [:residential]
    skip_before_action :authenticate_user!, :only => [:commercial]
    skip_before_action :authenticate_user!, :only => [:quote]
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    end
  end