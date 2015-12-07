class AddBokeIdToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :boke_id, :integer
    add_index "ratings",  ["boke_id"], name: "index_ratings_on_boke_id", using: :btree
  end
end
