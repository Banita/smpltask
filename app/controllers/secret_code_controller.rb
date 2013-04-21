class SecretCodeController < ApplicationController
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
	end
end
