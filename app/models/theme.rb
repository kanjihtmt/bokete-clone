class Theme < ActiveRecord::Base
  VALID = 1.freeze
  INVALID = 0.freeze

  belongs_to :category
  belongs_to :user
  has_many :bokes

  mount_uploader :image, ImageUploader

  validates :title, presence: true, length: { maximum: 60 }
  validates :category_id, presence: true
end
