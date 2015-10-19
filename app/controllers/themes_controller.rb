class ThemesController < ApplicationController
  before_action :set_theme, only: [:show, :edit, :update, :destroy]

  def index
    @themes = Theme.all
  end

  def show
  end

  def new
    @theme = Theme.new
  end

  def edit
  end

  def create
    @theme = Theme.new(theme_params)
    if @theme.save
      redirect_to @theme, notice: 'お題を作成しました。'
    else
      render :new
    end
  end

  def update
    if @theme.update(theme_params)
      redirect_to @theme, notice: 'お題を更新しました。'
    else
      render :edit
    end
  end

  def destroy
    @theme.destroy
    redirect_to themes_url, notice: 'お題を削除しました。'
  end

  private
    def set_theme
      @theme = Theme.find(params[:id])
    end

    def theme_params
      params[:theme]
    end
end
