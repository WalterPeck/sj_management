class TrainingController < ApplicationController
	
	def signup
	end
	


	
	
	def send_mail
		name = params[:name]
		email = params[:email]
		body = params[:comments]
		company = params[:company]
		city = params[:city]
		state = params[:state]
		
		UserMailer.training_email('clabvessels@gmail.com',name,email,company,body,city,state).deliver
		redirect_to root_path
	end
end
