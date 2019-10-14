class SecretCodesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
  	@secret_codes = SecretCode.order(:id).page params[:page]
  	@secret_code = SecretCode.new
  end

  def create
    secret_code_params[:no_of_times].to_i.times do 
  	  SecretCode.generate_code
    end
  	redirect_to secret_codes_url
  end

private
  def secret_code_params
    params.require(:secret_code).permit(:no_of_times)
  end  
end
