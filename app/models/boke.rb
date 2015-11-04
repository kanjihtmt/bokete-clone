class Boke < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  belongs_to :theme
  counter_culture :theme
end
