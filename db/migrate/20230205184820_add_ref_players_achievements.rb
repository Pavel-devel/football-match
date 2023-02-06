class AddRefPlayersAchievements < ActiveRecord::Migration[7.0]
  def change
    add_reference :players, :achievements, null: true, foreign_key: true
  end
end
