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
    return '' if sex == 0

    case sex
      when 1
        '男性'
      when 2
        '女性'
    end
  end

  def elapsed_time(time = nil)
    return '' if time.nil?

    diff = Time.current - time
    if diff > 24.hour
      "#{(diff / 1.day).round}日前"
    elsif diff > 1.hour
      "#{(diff / 1.hour).round}時間くらい前"
    elsif diff > 1.minute
      "#{(diff / 1.minute).round}分くらい前"
    else
      "#{diff.round}秒くらい前"
    end
  end
end
