class Boke < ActiveRecord::Base
  belongs_to :category
  belongs_to :theme
end
