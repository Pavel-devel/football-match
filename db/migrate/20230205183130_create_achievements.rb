class CreateAchievements < ActiveRecord::Migration[7.0]
  def change
    create_table :achievements do |t|
      t.string :name, null: false
      t.json :conditions

      t.timestamps
    end
  end
end
