require 'rails_helper'
include Capybara::RSpecMatchers

RSpec.describe PagesController, :type => :controller do
  render_views
  
  before(:each) do
    @base_title = "Microblog"
  end  

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
    
    it "should have right title" do
      get :home
      assert_select "title", "#{@base_title} | Home"
    end  
    
    it "should have a non-blank body" do
      get :home
      expect(response.body).should_not =~ /<body>\s*<\/body>/
    end
    
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end

    it "should have right title" do
      get :contact
      assert_select "title", "#{@base_title} | Contact"
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
    
    it "should have right title" do
      get :about
      assert_select "title", "#{@base_title} | About"
    end
  end

end
