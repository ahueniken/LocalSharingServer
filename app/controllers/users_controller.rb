class UsersController < ApplicationController
  protect_from_forgery except: :new
  
  def new
  	Users.create(:name => params[:name], :image_url => params[:image_url])
  end
end
