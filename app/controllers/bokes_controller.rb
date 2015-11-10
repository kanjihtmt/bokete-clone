class BokesController < ApplicationController
  before_action :set_theme, except: %i(index show)
  before_action :set_boke, only: %i(show)

  def index
    @bokes = Boke.sort(params[:tab]).category(params[:category]).page(params[:page])
  end

  def show
  end

  def new
    @boke = @theme.bokes.build
  end

  def create
    @boke = current_user.bokes.build(boke_params.merge(theme: @theme))
    if @boke.save
      redirect_to bokes_path, notice: 'ボケを作成しました。'
    else
      render :new, theme_id: @theme
    end
  end

  private
    def set_theme
      @theme = Theme.find(params[:theme_id] ? params[:theme_id] : params[:boke][:theme_id])
    end

    def set_boke
      @boke = Boke.find(params[:id])
    end

    def boke_params
      params.require(:boke).permit(:theme_id, :text, :tag, :category_id)
    end
end
