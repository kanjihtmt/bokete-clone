class Category < ActiveRecord::Base
  enum category_type: %i(theme boke)

  has_many :themes
  has_many :bokes
end
