class Boke < ActiveRecord::Base
  include CategoryScope

  enum sort: %i(recent hot popular pickup legend)

  belongs_to :category, -> { Category.boke }
  belongs_to :user
  belongs_to :theme
  counter_culture :theme

  scope :sort, ->(tab) do
    case sorts[tab]
      when sorts[:hot]
        interval(:within_half_a_day).order(ratings_count: :desc)
      when sorts[:popular]
        interval(:within_3_days).order(ratings_count: :desc)
      when sorts[:pickup]
        interval(:_89days_ago).order(ratings_count: :desc)
      when sorts[:legend]
        interval(:within_a_year).order(ratings_count: :desc)
      else
        order(created_at: :desc)
    end
  end

  scope :interval, ->(name) do
    case name
      when :within_half_a_day
        where('created_at >= ?', Time.current - 12.hour)
      when :within_3_days
        where('created_at >= ?', Time.current - 3.days)
      when :_89days_ago
        where(created_at: Time.current - 89.days)
      when :within_a_year
        where('created_at >= ?', Time.current - 1.year)
    end
  end

  validates :text, presence: true, length: { maximum: 60 }
  validates :category_id, :theme_id, presence: true
end
