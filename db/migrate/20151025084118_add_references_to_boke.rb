class AddReferencesToBoke < ActiveRecord::Migration
  def change
    add_column :bokes, :theme_id, :integer
    add_index "bokes", ["theme_id"], name: "index_bokes_on_theme_id", using: :btree
  end
end
