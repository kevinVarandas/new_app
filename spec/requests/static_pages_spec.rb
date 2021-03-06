require 'spec_helper'

describe "StaticPages" do

	subject { page }

	  describe "Home page" do
	    before { visit root_path } 

	    it { should have_selector('h1', text: 'Example App') }
	    it { should have_selector 'title',
	                        text: "Ruby on Rails Tutorial Example App" }
	    it { should_not have_selector 'title', text: '| Home' }
	  end

	  describe "Help page" do
	    before { visit help_path } 

	    it { should have_selector('h1', text: 'Example App') }
	    it { should have_selector 'title',
	                        text: "Ruby on Rails Tutorial Example App" }
	    it { should_not have_selector 'title', text: '| Help' }
	  end

	  describe "About page" do
	    before { visit about_path } 

	    it { should have_selector('h1', text: 'Example App') }
	    it { should have_selector 'title',
	                        text: "Ruby on Rails Tutorial Example App" }
	    it { should_not have_selector 'title', text: '| About' }
	  end

	  describe "Contact page" do
	    before { visit contact_path } 

	    it { should have_selector('h1', text: 'Contact') }
	    it { should have_selector 'title',
	                        text: "Ruby on Rails Tutorial Example App" }
	    it { should_not have_selector 'title', text: '| Contact' }
	  end
end
