class AddPhotosToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :photos, :json
  end
end
