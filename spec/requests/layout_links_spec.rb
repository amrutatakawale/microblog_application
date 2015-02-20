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

    it "shoud have About page at '/about'" do
      get '/about'
      assert_select "a[href=?]", about_path
    end	

  end
end
