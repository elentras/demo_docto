class Professional < ActiveRecord::Base
  validates :firstname, :lastname, :address_1, :zipcode, :city, :country, presence: true
end
