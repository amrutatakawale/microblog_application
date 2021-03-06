require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  render_views

  before(:each) do
    @base_title = "Microblog"
  end 

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    
    it "should have right title" do
      get :new
      assert_select "title", "#{@base_title} | Sign up"
    end

  end
  	
end
