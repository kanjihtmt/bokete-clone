class MembersController < ApplicationController
  before_action :set_user

  def show
    @bokes = @user.bokes.order(created_at: :desc).limit(3)
  end

  def bokes
    @bokes = @user.bokes.page(params[:page]).order(created_at: :desc)
  end

  def themes
    @themes = @user.themes.page(params[:page]).order(created_at: :desc)
  end

  def favorites
  end

  def ratings
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
