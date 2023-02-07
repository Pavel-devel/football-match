class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.integer :ran_kilometers, default: 0
      t.integer :goals, default: 0
      t.integer :pass_percentage, default: 0

      t.timestamps
    end
  end
end
