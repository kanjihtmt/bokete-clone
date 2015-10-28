module ApplicationHelper
  def breadcrumbs_for_bokes(tab = nil)
    case tab
      when 'hot'
        :hot
      when 'popular'
        :popular
      when 'pickup'
        :pickup
      when 'select'
        :select
      when 'legend'
        :legend
      else
        :top
    end
  end

  def display_sex(sex)
    sex == 1 ? '男性' : '女性'
  end
end
