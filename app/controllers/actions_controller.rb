class ActionsController < ApplicationController
  protect_from_forgery 

  before_filter :authenticate_user!

  def show
  	@actions = Action.all
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

  def create
    if current_user.action == nil
      @test = "TEST"
      Action.create(user_id: current_user.id, title: "NewApp")
    else 
      current_user.action.update_attribute(:title, "Updated");
    end
  end

  def refresh
    @actions = Actions.order('customer_id')
    render :partial => "actions.html.erb"
  end

end
