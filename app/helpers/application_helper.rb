module ApplicationHelper

	#Returns the full title on a per-page basis.
	def full_title(page_title)
		base_title = "S&J Risk Management"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
	
	def email_test(email,name)
		UserMailer.welcome_email(email,name).deliver
	end
end
