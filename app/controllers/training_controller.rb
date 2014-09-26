class TrainingController < ApplicationController
	
	def signup
	end
	


	
	
	def send_mail
		name = params[:name]
		email = params[:email]
		body = params[:comments]
		profession = params[:profession]
		city = params[:city]
		state = params[:state]
		
		UserMailer.training_email('clabvessels@gmail.com',name,email,profession,body,city,state).deliver
		redirect_to root_path
	end
end
