require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the title 'Jessie & Jordan * 1/4/14'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Jessie & Jordan * 1/4/14')
    end    
  
    it "should have the divtag titlebar 'Jessie & Jordan'" do
      visit '/static_pages/home'
      page.should have_content('Jessie & Jordan')
      #should have_css('div.titlebar')
    end
    
    it "should have the div id='subtitle' 'We're getting married, and we hope you'll be there'" do
      visit '/static_pages/home'     
      page.should have_content('We\'re getting married, and we hope you\'ll be there')
      #should have_css('div.subtitle')
    end
  end
  
  describe "Travel page" do
    it "should have the content 'Travel Information'" do
      visit '/static_pages/travel'
      page.should have_content('Jessie & Jordan')
      page.should have_content('Travel Information')
    end
    
    it "should have the title 'Travel Information'" do
      visit '/static_pages/travel'
      page.should have_selector('title', :text => 'Jessie & Jordan * Travel Information')
    end   
  end
  
  describe "Story page" do
    it "should have the content 'Our Story'" do
      visit '/static_pages/story'
      page.should have_content('Jessie & Jordan')
      page.should have_content('Our Story')
    end
 
    it "should have the title 'Our Story'" do   
      visit '/static_pages/story'
      page.should have_selector('title', :text => 'Jessie & Jordan * Our Story')
    end  
  end
  
  describe "Engagement page" do
    it "should have the content 'Engagement'" do
      visit '/static_pages/engagement'
      page.should have_content('Jessie & Jordan')
      page.should have_content('The Engagement')
    end
    
    it "should have the title 'The Engagement'" do   
      visit '/static_pages/engagement'
      page.should have_selector('title', :text => 'Jessie & Jordan * The Engagement')
    end  
  end
  
end
