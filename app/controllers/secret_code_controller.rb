class SecretCodeController < ApplicationController
	before_filter :authenticate_user!
	def index
	#@Secret_codes=SecretCode.all	
	end

	def create
		@secret_code=SecretCode.generate_codes(params[:number])
		# @secret_code.save
	end
end

