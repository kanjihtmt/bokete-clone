class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :boke

  counter_culture :user, column_name: :ratings_count, delta_column: :rank
  counter_culture :boke, column_name: :ratings_count, delta_column: :rank
end
