class AccountsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, except: %i(show)

  def show
    # TODO
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to accounts_path, notice: 'ユーザ情報を更新しました'
    else
      render :edit
    end
  end

  def photo
  end

  def password
  end

  def update_password
    if current_user.update_with_password(user_params)
      sign_in(current_user, bypass: true)
      redirect_to accounts_path, notice: 'パスワードを更新しました'
    else
      render :password
    end
  end

  def email
  end

  def withdraw
  end

  private
    def set_user
      @user = current_user
    end

    def user_params
      params.require(:user).permit(
        :name, :nickname, :sex, :sex_secret, :birthday, :birthday_secret, :email, :pref,
        :pref_secret, :profile, :current_password, :password, :password_confirmation, :avatar
      )
    end
end
