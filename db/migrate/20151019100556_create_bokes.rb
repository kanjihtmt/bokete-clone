class CreateBokes < ActiveRecord::Migration
  def change
    create_table :bokes do |t|
      t.text :text
      t.string :tag
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
