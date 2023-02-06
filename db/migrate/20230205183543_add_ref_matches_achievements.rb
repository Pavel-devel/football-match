class AddRefMatchesAchievements < ActiveRecord::Migration[7.0]
  def change
    add_reference :matches, :achievements, null: true, foreign_key: true
  end
end
