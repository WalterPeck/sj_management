require 'spec_helper'

describe "StaticPages" do
  	
  subject { page }
  
  shared_examples_for "all static pages" do
  	it { should have_selector('h1', text: heading) }
  	it { should have_title(full_title(page_title)) }
  end
  
  
  describe "Home Page" do
		before { visit root_path} 
		let(:heading) { 'S&J Risk Management' }  
		let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }  
    end
  	
  	
  	

 

	
		
	describe "Contact Page" do
		before { visit contact_path }
		let(:heading) { 'Contact' }  
		let(:page_title) { 'Contact' }

		
		it { should have_title(full_title('Contact')) }
	end

	
	describe "Services Page" do	
		before { visit services_path }
		let(:heading) { 'Services' }  
		let(:page_title) { 'Services' }

		
		it { should have_title(full_title('Services')) }
	end
	
	describe "Training Page" do
		
		before { visit training_path }
		let(:heading) { 'Training' }  
		let(:page_title) { 'Training' }
		

		it { should have_title(full_title('Training')) }
	end
	
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
	end

end