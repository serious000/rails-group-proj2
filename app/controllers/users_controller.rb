class UsersController < ApplicationController
	def index
		render 'index'
	end
	def create
		User.create(user_params)
		redirect_to "/users/new"
	end

private
	def user_params
	   params.require(:user).permit(:first_name, :last_name, :email, :password_confirmation, :password)
	end
end
