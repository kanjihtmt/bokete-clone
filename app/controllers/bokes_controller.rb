class BokesController < ApplicationController
  before_action :set_boke, only: [:show, :edit, :update, :destroy]

  def index
    @bokes = Boke.all
  end

  def show
  end

  def new
    @boke = Boke.new
  end

  def edit
  end

  def create
    @boke = Boke.new(boke_params)

    if @boke.save
      redirect_to @boke, notice: 'ボケを作成しました。'
    else
      render :new
    end
  end

  def update
    if @boke.update(boke_params)
      redirect_to @boke, notice: 'ボケを更新しました。'
    else
      render :edit
    end
  end

  def destroy
    @boke.destroy
    redirect_to bokes_url, notice: 'ボケを削除しました。'
  end

  private
    def set_boke
      @boke = Boke.find(params[:id])
    end

    def boke_params
      params[:boke]
    end
end
