class UsersController < ApplicationController
	def index
		render 'index'
	end

	def new
		if current_user
			redirect_to "/users/#{current_user.id}"
		end
	end

	def create
		@user = User.create(user_params)
		if @user.valid?
			session[:user_id] = User.last.id
			redirect_to "/users/#{current_user.id}"
		else
			flash[:errors] = @user.errors.full_messages
			redirect_to "/users/"
		end
	end
	def show
	end
	helper_method :current_user
private
	def user_params
	   params.require(:user).permit(:first_name, :last_name, :email, :password_confirmation, :password)
	end
end
