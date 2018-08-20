class AddCityToSpots < ActiveRecord::Migration[5.2]
  def change
    add_reference :spots, :city, foreign_key: true
  end
end
