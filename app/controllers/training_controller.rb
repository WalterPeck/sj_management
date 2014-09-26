class TrainingController < ApplicationController
	
	def signup
	end
	


	
	
	def send_mail
		name = params[:name]
		email = params[:email]
		body = params[:comments]
		profession = params[:profession]
		UserMailer.training_email('clabvessels@gmail.com',name,email,profession,body).deliver
		redirect_to root_path
	end
end
