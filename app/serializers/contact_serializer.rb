class ContactSerializer < ActiveModel::Serializer
  attributes :website, :phone, :facebook, :twitter, :email
end
