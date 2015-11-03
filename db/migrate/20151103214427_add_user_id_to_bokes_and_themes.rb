class AddUserIdToBokesAndThemes < ActiveRecord::Migration
  def change
    add_column :bokes, :user_id, :integer
    add_column :themes, :user_id, :integer
    add_index "bokes",  ["user_id"], name: "index_bokes_on_user_id", using: :btree
    add_index "themes", ["user_id"], name: "index_themes_on_user_id", using: :btree
  end
end
