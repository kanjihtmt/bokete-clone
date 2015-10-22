class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :nickname, :string, length: 10
    add_column :users, :sex, :integer
    add_column :users, :sex_secret, :boolean
    add_column :users, :birthday, :date
    add_column :users, :birthday_secret, :boolean
    add_column :users, :pref, :integer
    add_column :users, :pref_secret, :boolean
    add_column :users, :profile, :text
  end
end
