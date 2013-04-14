class SecretCodeController < ApplicationController
	def index
	  @secret_codes=SecretCode.all	
	end

	def create
	  @secret_code=SecretCode.generate_codes(params[:number])
	end
end
