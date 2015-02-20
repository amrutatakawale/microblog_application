require 'rails_helper'


RSpec.describe "LayoutLinks", :type => :request do


  describe "GET /layout_links" do
     

    it "should have a Home page at '/'" do
      get "/"
      assert_select "a[href=?]", root_path
    end
    
    it "should have a Contact page at '/contact'" do
      get '/contact'
      assert_select "a[href=?]", contact_path
    end  

    it "should have a About page at '/about'" do
      get '/about'   
      assert_select "a[href=?]", about_path
    end	
    
    # it "should have a Sign up page at '/sign_up'" do
    #   get '/signup'
    #   assert_select "a[href=?]", signup_path
    # end
     
    # it "should have the right links on the layout" do
    #   visit root_path
    #   assert_select "a[href=?]", root_path
    # end  

  end
end


