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
    raise ActionController::RoutingError, '正しいページ遷移ではありません' unless valid_prev_action?(['upload', 'build', 'preview'])
    if request.get?
      @theme = Theme.find(params[:id])
    else
      @theme = Theme.new(theme_params)
      unless @theme.save(validate: false)
        render :upload
      end
    end
  end

  def preview
    raise ActionController::RoutingError, '正しいページ遷移ではありません' unless valid_prev_action?(['build', 'preview'])
    @theme = Theme.find(theme_params[:id])
    @theme.assign_attributes(theme_params)
    unless  @theme.save
      render :build, id: @theme.id
    end
  end

  def create
    @theme = Theme.find(theme_params[:id])
    @theme.status = Theme::VALID
    if @theme.save
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
      params.require(:theme).permit(:id, :title, :tag, :category_id, :image, :status)
    end
end
