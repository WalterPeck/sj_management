class UserMailer < ActionMailer::Base
  default from: "chrislabarge2@gmail.com"
	
	def training_email(sj_email, name, email, company, body, city, state)
		@name = name 
		@email = email
		@company = company
		@body = body
		@city = city
		@state = state
				
		mail(to: sj_email, subject: "NEW Training Client!!" )
	end
	
end


