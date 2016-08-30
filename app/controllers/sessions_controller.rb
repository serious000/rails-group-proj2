class SessionsController < ApplicationController
	protect_from_forgery
	def new
		if current_user
			redirect_to "/listings"
		end
	end

	def create
		@user = User.find_by_email(params[:email])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to "/users/#{current_user.id}"
		else
			flash[:errors] = ["!! Error: \n Invalid Login Information. \n Please Try Again."]
			redirect_to '/users/new'
		end
	end


	def destroy
		session[:user_id] = nil
		redirect_to "/users/new"
	end

	helper_method :current_user

	private

	def user_params
	end
end
