class AddRefEventsMatch < ActiveRecord::Migration[7.0]
  def change
    add_reference :matches, :events, null: true, foreign_key: true
  end
end
