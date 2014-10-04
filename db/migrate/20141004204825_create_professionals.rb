class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :firstname
      t.string :lastname
      t.string :address_1
      t.string :address_2
      t.string :zipcode
      t.string :city
      t.string :country
      t.string :speciality
      t.string :latitude
      t.string :longitude
      t.string :speciality
      t.timestamps
    end
  end
end
