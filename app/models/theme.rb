class Theme < ActiveRecord::Base
  belongs_to :category
  has_many :bokes
end
