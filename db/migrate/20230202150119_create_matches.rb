class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :place, number: false

      t.timestamps
    end
  end
end
