class AddRefAchievements < ActiveRecord::Migration[7.0]
  def change
    add_reference :achievements, :players, null: true, foreign_key: true
    add_reference :achievements, :matches, null: true, foreign_key: true
  end
end
