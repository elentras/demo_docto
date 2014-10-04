class Professional < ActiveRecord::Base
  geocoded_by :full_street_address 
  after_validation :geocode, if: ->(obj) { obj.address_1_changed? }

  validates :firstname, :lastname, :address_1, :zipcode, :city, :country, presence: true
  
  def full_street_address
    [address_1, zipcode, city, country].join(', ')
  end

  def fullname
    [firstname, lastname].join(' ')
  end

  def google_map_path
    "http://maps.google.com/maps/api/staticmap?size=450x300&sensor=false&zoom=16&markers=#{latitude}%2C#{longitude}"
  end
end
