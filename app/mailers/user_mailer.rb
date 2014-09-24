class UserMailer < ActionMailer::Base
  default from: "chrislabarge2@gmail.com"
	
	def welcome_email(email, name)
		@name = name 
		mail(to: email, subject: "Hello #{@name}" )
	end
	
end


