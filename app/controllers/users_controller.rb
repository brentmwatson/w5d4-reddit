class UsersController < ApplicationController
    # Loads all the users into the app
    def index
        @users = User.all
    end

    # Assigns a global instance variable for user from method 'new' class User (user.rb)
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
        else
          flash.now[:warning] = 'Please fill the feilds listed.'
          render :new
        end
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :bio )
    end

end
