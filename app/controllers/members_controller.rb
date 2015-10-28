class MembersController < ApplicationController
  before_action :set_user

  def show
  end

  def bokes
  end

  def themes
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
