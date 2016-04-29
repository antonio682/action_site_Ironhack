class UserController < ApplicationController

	def index 
		@users = User.users_list
	end

	def show 
	end

	def create
	end

	def destroy
	end
end
