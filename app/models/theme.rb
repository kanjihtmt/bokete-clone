class Theme < ActiveRecord::Base
  VALID = 1.freeze
  INVALID = 0.freeze
  HOT = 'hot'.freeze
  POPULAR = 'popular'.freeze

  scope :sort, ->(type) do
    case type
      when HOT
        joins(:bokes).where("bokes.created_at >= ?", Time.current - 0.5.day).order(bokes_count: :desc)
      when POPULAR
        joins(:bokes).where("bokes.created_at >= ?", Time.current - 3.day).order(bokes_count: :desc)
      else
        order(created_at: :desc)
    end
  end

  scope :category, ->(id) do
    where(category: id) if id
  end

  belongs_to :category
  belongs_to :user
  has_many :bokes

  mount_uploader :image, ImageUploader

  validates :title, presence: true, length: { maximum: 60 }
  validates :category_id, presence: true
end
