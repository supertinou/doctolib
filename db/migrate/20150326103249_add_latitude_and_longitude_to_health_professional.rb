class AddLatitudeAndLongitudeToHealthProfessional < ActiveRecord::Migration
  def change
    add_column :health_professionals, :latitude, :float
    add_column :health_professionals, :longitude, :float
  end
end
