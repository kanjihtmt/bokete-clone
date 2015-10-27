class AddTypeToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :category_type, :integer, default: 0, null: false
  end
end
