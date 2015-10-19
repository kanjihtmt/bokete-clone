class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :title
      t.string :tag
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
