class ActionsController < ApplicationController

  def show
    response.headers["auth_token"] = current_user.authentication_token
    if params[:ids] != nil
  	  @actions = Action.all
    else
      @actions = Action.all
    end
    @name = current_user.name
  end

  def share
    if current_user.action == nil
      Action.create(user_id: current_user.id, title: params[:title])
    else
      current_user.action.update_attribute(:title, params[:title]);
    end
  end

  def create
    if current_user.action == nil
      Action.create(user_id: current_user.id, title: "NewApp")
    else
      current_user.action.update_attribute(:title, "Updated");
    end
  end

  def refresh
    if params[:ids] != nil
      @actions = Action.find(params[:ids])
    else
      @actions = Action.all
    end
    @name = current_user.name
    render :partial => "actions.html.erb"
  end

end
