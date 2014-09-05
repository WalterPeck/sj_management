require 'spec_helper'

describe "StaticPages" do
  
  describe "Home Page" do
   
    it "should have the content 'S&J Risk Management'" do
      visit '/static_pages/home'	
      expect(page).to have_content('S&J Risk Management')
    end
  	
  	it "should have the title 'Home'" do
  		visit '/static_pages/home'
  		expect(page).to have_title("S&J Risk Management | Home")
  	end
  end
	
		
	describe "Contact Page" do
		
		it "should have the content 'Contact Us'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact Us')
		end
		
		it "should have the title 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_title("S&J Risk Management | Contact")
  	end
	end

	
	describe "Services Page" do	
		
		it "should have the content 'Services Provided' " do
			visit '/static_pages/services'
			expect(page).to have_content('Services Provided')
		end
		
		it "should have the title 'Services'" do
  		visit '/static_pages/services'
  		expect(page).to have_title("S&J Risk Management | Services")
  	end	
	end
end