class Boke < ActiveRecord::Base
  belongs_to :category, -> { Category.boke }
  belongs_to :user
  belongs_to :theme
  counter_culture :theme

  validates :text, presence: true, length: { maximum: 60 }
  validates :category_id, :theme_id, presence: true
end
