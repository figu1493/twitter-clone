require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path }

    it "should have the h1 'Twitter Clone'" do
      page.should have_selector('h1', text: 'Twitter Clone')
    end

    it "should have the base title" do
      page.should have_selector('title',
                        text: "Ruby on Rails Tutorial Twitter Clone")
    end

    it "should not have a custom page title" do
      page.should_not have_selector('title', text: '| Home')
    end
  end

  describe "Help page" do
    before { visit help_path }

    it "should have the h1 'Help'" do
      page.should have_selector('h1', text: 'Help')
    end

    it "should have the title 'Help'" do
      page.should have_selector('title',
                        text: "Ruby on Rails Tutorial Twitter Clone | Help")
    end
  end

  describe "About page" do
    before { visit about_path }

    it "should have the h1 'About'" do
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the title 'About Us'" do
      page.should have_selector('title',
                    text: "Ruby on Rails Tutorial Twitter Clone | About Us")
    end
  end

  describe "Contact page" do
    before { visit contact_path }

    it "should have the h1 'Contact'" do
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      page.should have_selector('title',
                    text: "Ruby on Rails Tutorial Twitter Clone | Contact")
    end
  end

   it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: 'Ruby on Rails Tutorial Twitter Clone | About Us'
    click_link "Help"
    page.should have_selector 'title', text: 'Ruby on Rails Tutorial Twitter Clone | Help'
    click_link "Contact"
    page.should have_selector 'title', text: 'Ruby on Rails Tutorial Twitter Clone | Contact'
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', text: 'Ruby on Rails Tutorial Twitter Clone'
    click_link "Twitter Clone"
    page.should have_selector 'h1', text: 'Welcome to the Twitter Clone'
  end
end