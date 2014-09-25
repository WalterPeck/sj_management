class TrainingController < ApplicationController
	
	def signup
	end
	


	
	
	def send_mail
		name = params[:name]
		email = params[:email]
		body = params[:comments]
		UserMailer.training_email('clabvessels@gmail.com',name,email,body).deliver
		redirect_to root_path
	end
end
