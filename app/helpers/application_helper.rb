module ApplicationHelper

  # Return a title on a per-page basis.	
  def title
  	base_title = "Microblog"
  	if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"	
  	end	
  end	

  # Return to home page
  def logo
    image_tag("/assets/logo.png", :alt => "Microblog App")
  end	

end
