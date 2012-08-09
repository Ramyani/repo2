require 'spec_helper'
describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
  end

  describe "Help page" do
    before { visit help_path }

   
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
      page.should have_selector('title', text: full_title('Help'))
    end
  end

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
      page.should have_selector('title', text: full_title('About Us'))
    end
  end

describe "Contact page" do
  it "should have the h1 'About Us'" do
    visit '/static_pages/contact'
    page { should have_selector('h1',    text: 'Contact') }
    page { should have_selector('title', text: full_title('Contact')) }
  end
end
end
