class Boke < ActiveRecord::Base
  include CategoryScope

  belongs_to :category, -> { Category.boke }
  belongs_to :user
  belongs_to :theme
  counter_culture :theme

  scope :sort, ->(tab) do
  end

  validates :text, presence: true, length: { maximum: 60 }
  validates :category_id, :theme_id, presence: true
end
