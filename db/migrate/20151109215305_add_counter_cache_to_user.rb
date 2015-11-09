class AddCounterCacheToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :ratings_count, :integer, null: false, default: 0
    add_column :users, :bokes_count, :integer, null: false, default:  0
    add_column :users, :themes_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :users, :ratings_count
    remove_column :users, :bokes_count
    remove_column :users, :themes_count
  end
end
