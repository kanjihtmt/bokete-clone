module CategoryScope
  extend ActiveSupport::Concern

  included do
    scope :category, ->(id) do
      where(category: id) if id
    end
  end
end