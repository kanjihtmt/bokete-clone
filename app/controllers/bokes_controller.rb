class BokesController < ApplicationController
  before_action :set_theme, except: %i(index)

  def index
    @bokes = Boke.all
  end

  def show
  end

  def new
    @boke = @theme.bokes.build
  end

  def create
    @boke = @themes.bokes.build(boke_params)

    if @boke.save
      redirect_to @boke, notice: 'ボケを作成しました。'
    else
      render :new
    end
  end

  private
    def set_theme
      #@theme = Theme.find(params[:theme_id])
      @theme = Theme.new
    end

    def boke_params
      params.require(:boke).permit(:theme_id, :text, :tag, :category_id)
    end
end
