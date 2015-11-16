class TopsController < ApplicationController
  def index
    @popular = Boke.find(Boke.sort(:popular).limit(50).pluck(:id).sample || Boke.all.pluck(:id).sample)
    @hots = Boke.sort(:hot).limit(3)
    @recents = Boke.sort(:recent).limit(6)
  end
end
