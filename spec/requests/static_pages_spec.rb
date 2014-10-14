require 'spec_helper'

describe "StaticPages" do
  	
  subject { page }
  
  shared_examples_for "all static pages" do
  	it { should have_selector('h1', text: heading) }
  	it { should have_title(full_title(page_title)) }
  end
  
  
  describe "Home Page" do
		before { visit root_path} 
		let(:heading) { 'Risk Management' }  
		let(:page_title) { '' }

    it_should_behave_like "all static pages"
  	
  	it "should have the right marketing-service link"do
  		
  		within("#marketing-services") do
				click_link("View more")
				expect(page).to have_title(full_title('Services'))
			end
			
		end
		
		it "should have the right marketing-training link"do
  		
  		within("#marketing-training") do
				click_link("View more")
				expect(page).to have_title(full_title('Training'))
			end
			
		end
		
		it "should have the right marketing-contact link"do
  		
  		within("#marketing-contact") do
				click_link("View more")
				expect(page).to have_title(full_title('Contact'))
			end
			
		end
		
		it "should have the right learn-more link" do
			click_link("Learn more")
			expect(page).to have_title(full_title('Services'))
		
		end
     
    
    end
  	
  	
  	

 

	
		
	describe "Contact Page" do
		before { visit contact_path }
		let(:heading) { 'Contact' }  
		let(:page_title) { 'Contact' }

		
		it_should_behave_like "all static pages"
	end

	
	describe "Services Page" do	
		before { visit services_path }
		
		let(:heading) { 'Welcome' }  
		let(:page_title) { 'Services' }
		
		it_should_behave_like "all static pages"
		
		
		it "should have working links at the bottom" do
		click_link('More Training')
		expect(page).to have_title(full_title('Training'))
		click_link('Contact S&J')
		expect(page).to have_title(full_title('Contact'))
		
		end	
		
		
		
	end
	
	describe "Training Page" do
		
		before { visit training_path }
		let(:heading) { 'Training' }  
		let(:page_title) { 'Training' }
		
				

		it_should_behave_like "all static pages"
	end
	

	#this has the test visit the home page and click the links.

	it "should have the right links on the layout" do	
		visit root_path
		click_link "Services"
		expect(page).to have_title(full_title('Services'))
		click_link "Home"
		expect(page).to have_title(full_title(''))
		click_link "Contact"
		expect(page).to have_title(full_title('Contact'))
		click_link "Training"
		expect(page).to have_title(full_title('Training'))
		click_link "S&J Management"
		expect(page).to have_title(full_title(''))
		click_link "Contact S&J"
		expect(page).to have_title(full_title('Contact'))
		
	
		
	end

	

end