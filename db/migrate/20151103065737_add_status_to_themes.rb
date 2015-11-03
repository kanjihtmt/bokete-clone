class AddStatusToThemes < ActiveRecord::Migration
  def change
    add_column :themes, :status, :integer, default: 0, null: false
  end
end
