class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rank
      t.string :comment
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
