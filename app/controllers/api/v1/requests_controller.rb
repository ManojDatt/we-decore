class Api::V1::RequestsController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :validate_token, only: [:index, :create]

	def create
		if (7..11).include? Time.now.hour 
	 		# break fast time
	 		@user.break_fasts.create(request_params)
	 		render json: {code: 200, message: "Breakfast Request Send"}
	 	elsif (13..15).include? Time.now.hour
	 		# lunch time
	 		@user.lunches.create(request_params)
	 		render json: {code: 200, message: "Lunch Request Send"}
	 	elsif (20..22).include? Time.now.hour
	 		# dinner time
	 		@user.dinners.create(request_params)
	 		render json: {code: 200, message: "Dinner Request Send"}
	 	else
	 		render json: {code: 302, message: "Request Can't Be Placed In This Time Slot"}
	 	end
	end

	def index
	 	if (7..11).include? Time.now.hour 
	 		# break fast time
	 		menu = Food.breakfasts
	 		render json: {code: 200, menu: menu.select(:id, :image, :name, :discription), message: "Breakfast Items"}
	 	elsif (13..15).include? Time.now.hour
	 		# lunch time
	 		menu = Food.lunches
	 		render json: {code: 200, menu: menu.select(:id, :image, :name, :discription), message: "Lunch Items"}
	 	elsif (20..22).include? Time.now.hour
	 		# dinner time
	 		menu = Food.dinners
	 		render json: {code: 200, menu: menu.select(:id, :image, :name, :discription), message: "Dinner Items"}
	 	else
	 		render json: {code: 302, menu: [], message: "Will show on time"}
	 	end
	end

	def login
		user = AdminUser.find_by(email: login_params[:email])
		if user and user.valid_password?(login_params[:password])
			render json: {code: 200, message: "Login Successfully", auth_token: user.auth_token}
		else
			render json: {code: 500, message: "Invalid Login Attempt"}
		end
	end

	def validate_token
		auth_token = request.headers["Authorization"]
		@user = AdminUser.find_by(auth_token: auth_token)
		unless auth_token and  @user
			render json: {code: 500, message: "Invalid Auth Token"}
		end
	end


	private

	def login_params
		params.require(:login).permit(:email, :password)
	end

	def request_params
		params.permit(:request=>[:food_id, :message])[:request]
	end

end