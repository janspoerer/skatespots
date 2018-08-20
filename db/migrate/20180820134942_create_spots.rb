class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :category

      t.timestamps
    end
  end
end
