class SecretCodeController < ApplicationController
<<<<<<< HEAD
	before_filter :authenticate_user! ,:except=>[:new,:create_code]
	authorize_resource
	def new
		@code=SecretCode.new
	end

	def create_code
		@code=SecretCode.create(params[:newcode]).save!
		redirect_to :action=>'index'
	end
	def index
	  @secret_codes=SecretCode.all	
	end

	def create
	  @secret_code=SecretCode.generate_codes(params[:number])
=======
	before_filter :authenticate_user!
	def index
	#@Secret_codes=SecretCode.all	
	end

	def create
		@secret_code=SecretCode.generate_codes(params[:number])
		# @secret_code.save
>>>>>>> f0fe7efcee3f608d1553babfd2cf7687cac3e947
	end
end

