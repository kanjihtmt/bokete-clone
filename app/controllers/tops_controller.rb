class TopsController < ApplicationController
  HOT_MAX = 3
  RECENT_MAX = 6

  def index
    if Boke.sort(:popular).count > 0 || Boke.count > 0
      @popular = Boke.find(Boke.sort(:popular).pluck(:id).sample || Boke.all.pluck(:id).sample)
    else
      @popular = nil
    end
    @hots = Boke.sort(:hot).limit(HOT_MAX)
    @recents = Boke.sort(:recent).limit(RECENT_MAX)
  end
end
