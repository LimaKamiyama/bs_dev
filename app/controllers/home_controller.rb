class HomeController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @thoughts = Thought.includes(:user).all.order("id DESC").page(params[:page]).per(10)
    @actions = Action.includes(:user).all.order("id DESC").page(params[:page]).per(10)
  end

  def new_thought
  end

  def new_action
  end

  def create
    if params[:thought_button]
      @thoughts = Thought.create(tag: thought_params[:tag], text: thought_params[:text], open_area: thought_params[:open_area], image: thought_params[:image], user_id: current_user.id)
    elsif params[:action_button]
      @actions = Action.create(genre: action_params[:genre], text: action_params[:text], open_area: action_params[:open_area], image: action_params[:image], user_id: current_user.id)
    end
  end

  def destroy
    if params[:thought_button]
      thought = Thought.find(params[:id])
          if thought.user_id == current_user.id
              thought.destroy
          end
    elsif params[:action_button]
      action = Action.find(params[:id])
          if action.user_id == current_user.id
              action.destroy
          end
    end
  end

  def edit_thought
    @thought = Thought.find(params[:id])
  end

  def edit_action
    @action = Action.find(params[:id])
  end

  def update
    if params[:thought_button]
      thought = Thought.find(params[:id])
        if thought.user_id == current_user.id
          thought.update(thought_params)
        end
    elsif params[:action_button]
      action = Action.find(params[:id])
        if action.user_id == current_user.id
          action.update(action_params)
        end
    end
  end

  def show
    @thought = Thought.find(params[:id])
    @comments = @thought.comments.includes(:user)
  end

  private
  def thought_params
    params.permit(:tag, :text, :open_area, :image, :user_id)
  end

  private
  def action_params
    params.permit(:genre, :text, :open_area, :image, :user_id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
