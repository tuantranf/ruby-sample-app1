require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home Page" do

    it "GET /static_pages" do
    	# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    	get static_pages_home_path
    	response.status.should be(200)
    end

    it "should have the base title" do
  		visit '/static_pages/home'
  		expect(page).to have_title("#{base_title}")
	end

	it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end

  	it "should have the content 'Sample App'" do
  		visit '/static_pages/home'
  		expect(page).to have_content('Sample App')
  	end
  end

  describe "Help Page" do

  	it "should have the right title" do
  		visit '/static_pages/help'
  		expect(page).to have_title("#{base_title}")
	end

	it "should not have a custom page title" do
      visit '/static_pages/help'
      expect(page).not_to have_title('| Help')
    end

  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

  end

  describe "About Page" do

  	it "should have the right title" do
  		visit '/static_pages/about'
  		expect(page).to have_title("#{base_title}")
	end

	it "should not have a custom page title" do
      visit '/static_pages/about'
      expect(page).not_to have_title('| About Us')
    end

  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end

  end

   describe "Contact Page" do

  	it "should have the right title" do
  		visit '/static_pages/contact'
  		expect(page).to have_title("#{base_title}")
	end


	it "should not have a custom page title" do
      visit '/static_pages/contact'
      expect(page).not_to have_title('| Contact')
    end

  	it "should have the content 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact')
  	end

  end

end
