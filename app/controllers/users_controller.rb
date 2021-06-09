class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        user.params = params.require(:user).permit(:email, :password, :password_confirmation)
        @user = User.new(user.params)
        if @user.valid?
        
        else 
            render 'new'
        end        
    end

end