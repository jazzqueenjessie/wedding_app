require 'spec_helper'

describe "StaticPages" do
 
  let(:base_title) { "Jessie & Jordan"}

  describe "Home page" do
    it "should have the title 'Jessie & Jordan * 1/4/14'" do
      visit root_path
      page.should have_selector('title', :text => "#{base_title} * 1/4/14")
    end    
  
    it "should have the divtag titlebar 'Jessie & Jordan'" do
      visit root_path
      page.should have_content('Jessie & Jordan')
      #should have_css('div.titlebar')
    end
    
    it "should have the div id='subtitle' 'We're getting married, and we hope you'll be there'" do
      visit root_path     
      page.should have_content('We\'re getting married, and we hope you\'ll be there')
      #should have_css('div.subtitle')
    end
    
    #don't want this test
    #it "should not have a custom page title" do
     # visit '/static_pages/home'
      #page.should_not have_selector('title', :text => ' * 1/4/14')
    #end
  end
  
  describe "Travel page" do
    it "should have the content 'Travel Information'" do
      visit travel_path
      page.should have_content('Jessie & Jordan')
      page.should have_content('Travel Information')
    end
    
    it "should have the title 'Travel Information'" do
      visit travel_path
      page.should have_selector('title', :text => "#{base_title} * Travel Information")
    end   
  end
  
  describe "Story page" do
    it "should have the content 'Our Story'" do
      visit story_path
      page.should have_content('Jessie & Jordan')
      page.should have_content('Our Story')
    end
 
    it "should have the title 'Our Story'" do   
      visit story_path
      page.should have_selector('title', :text => "#{base_title} * Our Story")
    end  
  end
  
  describe "Engagement page" do
    it "should have the content 'Engagement'" do
      visit engagement_path
      page.should have_content('Jessie & Jordan')
      page.should have_content('The Engagement')
    end
    
    it "should have the title 'The Engagement'" do   
      visit engagement_path
      page.should have_selector('title', :text => "#{base_title} * The Engagement")
    end  
  end
  
end
