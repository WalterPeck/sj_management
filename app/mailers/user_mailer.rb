class UserMailer < ActionMailer::Base
  default from: "chrislabarge2@gmail.com"
	
	def training_email(company_email, name, email, body)
		@name = name 
		@email = email
		@body = body
		
		mail(to: company_email, subject: "NEW Training Client!!" )
	end
	
end


