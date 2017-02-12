class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @thoughts = current_user.thoughts.page(params[:page]).per(10).order('created_at desc')
    @actions = current_user.actions.page(params[:page]).per(10).order('created_at desc')
  end

  def destroy
    user.destroy
  end

end
