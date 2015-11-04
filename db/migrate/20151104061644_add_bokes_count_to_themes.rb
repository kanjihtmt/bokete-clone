class AddBokesCountToThemes < ActiveRecord::Migration
  def self.up
    add_column :themes, :bokes_count, :integer, :null => false, :default => 0
  end

  def self.down
    remove_column :themes, :bokes_count
  end
end
