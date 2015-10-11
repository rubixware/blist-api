class AddressSerializer < ActiveModel::Serializer
  attributes :id, :street, :suburb, :city, :region, :latitude, :longitude
end
