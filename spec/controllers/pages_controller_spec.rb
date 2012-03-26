require 'spec_helper'

describe PagesController do
   #Normally respec will just test the actions inside a controller test, if we want to
   # also render the views, we have to explicitly via the second line.

  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
	
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",:content => " | Home")
      end
    end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
	
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",:content => " | Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
	
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",:content => " | About")
    end
  end

end
