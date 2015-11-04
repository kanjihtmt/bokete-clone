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

  def display_sex(sex = 0)
    case sex
      when 1
        '男性'
      when 2
        '女性'
      else
        ''
    end
  end

  def elapsed_time(time = nil)
    return '' if time.nil?

    diff = (Time.current - time) / (60 * 60)
    if diff > 24
      "約#{diff / 24}日前"
    else
      "#{diff.round}時間くらい前"
    end
  end
end
