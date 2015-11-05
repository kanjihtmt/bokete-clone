class AddCounterCacheToBokes < ActiveRecord::Migration
  def self.up
    add_column :bokes, :ratings_count, :integer, :null => false, :default => 0
  end

  def self.down
    remove_column :bokes, :ratings_count
  end
end
