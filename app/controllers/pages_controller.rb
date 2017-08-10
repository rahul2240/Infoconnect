class PagesController < ApplicationController
  def home
  	@microposts = Micropost.first(4)
  	@user = current_user
  end

  def about
  end

 
end
