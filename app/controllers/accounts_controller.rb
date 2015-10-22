class AccountsController < ApplicationController
  before_action :set_user, only: %i(edit photo password email)

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  def photo
  end

  def password
  end

  def update_password
  end

  def email
  end

  private
    def set_user
      @user = current_user
    end

    def user_params
      params.require(:user).permit(:password, :password_confirm)
    end

    def password_params
      params.require(:user).permit(:current_password, :password, :password_confirm)
    end
end
