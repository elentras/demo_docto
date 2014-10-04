class AlterTypesOfLongitudeAndLatitude < ActiveRecord::Migration
  def change
    change_column :professionals, :longitude, :float
    change_column :professionals, :latitude, :float
  end
end