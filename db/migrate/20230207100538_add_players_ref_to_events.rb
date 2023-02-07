class AddPlayersRefToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :players, null: true, foreign_key: true
  end
end
