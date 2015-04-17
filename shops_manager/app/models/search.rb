class ShopSearch < ActiveRecord::Base
  scope :latitude, -> latitude { where(:latitude <= latitude ) }
  scope :longitude, -> longitude { where(:longitude <= degree) }
end