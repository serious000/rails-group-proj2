class SessionsController < ApplicationController
	protect_from_forgery
	def new
	end
	def gloggin
		redirect_to '/users/new'
	end
	def login
		@user = User.find_by_email(params[:email])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to "/users/new"
		else
			flash[:errors] = "!! Error: \n Invalid Login Information. \n Please Try Again."
			redirect_to '/'
		end
	end
	def logout
		session[:user_id] = nil
		redirect_to '/'
	end

end
