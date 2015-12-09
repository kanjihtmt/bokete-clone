class RenameRankScoreToRating < ActiveRecord::Migration
  def change
    rename_column :ratings, :rank, :score
  end
end
