class Category < ActiveRecord::Base
  THEME = 0.freeze
  BOKE = 1.freeze

  has_many :themes, -> { where category_type: THEME }
  has_many :bokes, -> { where category_type: BOKE }
end
