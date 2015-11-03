class ThemesController < ApplicationController
  before_action :set_theme, only: %i(show)

  def index
    @themes = Theme.all
  end

  def show
  end

  def upload
    @theme = Theme.new
  end

  def build
    raise ActionController::RoutingError, '正しいページ遷移ではありません' unless valid_prev_action?(['upload', 'preview'])
    @theme = session[:theme] = Theme.new(theme_params)
  end

  def preview
    #raise ActionController::RoutingError, '正しいページ遷移ではありません' unless valid_prev_action?('new')
    @theme = session[:theme] = Theme.new(theme_params)

    unless @theme.valid?
      render :build
    else
      render action: :preview
    end
  end

  def create
    @theme = Theme.new(session[:theme])
    if @theme.save
      session.delete(:theme)
      redirect_to themes_path, notice: 'お題を作成しました。'
    else
      redirect_to upload_themes_path, notice: 'お題の登録に失敗しました。'
    end
  end

  private
    def valid_prev_action?(action_name)
      prev = Rails.application.routes.recognize_path(request.referrer)
      if action_name.instance_of?(Array)
        action_name.each do |action|
          return true if prev[:controller] == controller_name && prev[:action] == action
        end
      end
      prev[:controller] == controller_name && prev[:action] == action_name
    end

    def set_theme
      @theme = Theme.find(params[:id])
    end

    def theme_params
      params.require(:theme).permit(:title, :tag, :category_id, :image)
    end
end
