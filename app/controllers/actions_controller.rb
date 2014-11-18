class ActionsController < ApplicationController
  protect_from_forgery except: :share

  def show
  	@actions = Actions.order('customer_id')
  end

  def share
  	action = Actions.find_by customer_id: params[:customer_id]
  	if action.nil?
  		Actions.create(:title => params[:title], :description => params[:description], :customer_id => params[:customer_id])
  	else 
  		action.update(title: params[:title])
  		action.update(description: params[:title])
  	end
  end

  def refresh
    @actions = Actions.order('customer_id')
    render :partial => "actions.html.erb"
  end

end
