require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) {"S&J Risk Management"}
  
  describe "Home Page" do
   
    it "should have the content 'S&J Risk Management'" do
      visit '/static_pages/home'	
      expect(page).to have_content('S&J Risk Management')
    end
  	
  	it "should have the title 'Home'" do
  		visit '/static_pages/home'
  		expect(page).to have_title("#{base_title}")
  	end
  	
  	it "should not have a custom page title" do
 			visit '/static_pages/home'
 			expect(page).not_to have_title('| Home')
 		end	
 
	end
	
		
	describe "Contact Page" do
		
		it "should have the content 'Contact Us'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact Us')
		end
		
		it "should have the title 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_title("#{base_title} | Contact")
  	end
	end

	
	describe "Services Page" do	
		
		it "should have the content 'Services Provided' " do
			visit '/static_pages/services'
			expect(page).to have_content('Services Provided')
		end
		
		it "should have the title 'Services'" do
  		visit '/static_pages/services'
  		expect(page).to have_title("#{base_title} | Services")
  	end	
	end
	
	describe "Training Page" do
		
		it "should have the content 'Training' " do
			visit '/static_pages/training'
			expect(page).to have_content('Training')
		end
		
		it "should have the title 'Training'" do
			visit '/static_pages/training'
			expect(page).to have_title("#{base_title} | Training")
		end
	end

end