class ActionsController < ApplicationController
  protect_from_forgery except: :share

  def show
  	@actions = Actions.all
  end

  def share
  	Actions.create(:title => params[:title], :description => params[:description], :customer_id => params[:customer_id])
  	render text: "Thanks for sending a POST request with cURL! Payload: #{params[:name]}"
  end
end
