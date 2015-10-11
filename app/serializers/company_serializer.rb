class CompanySerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :description, :category_id, :tags

  def tags
    object.tags_objects
  end

  def attributes(*args)
    hash = super
    contact = object.contact
    address = object.address
    hash.reverse_merge!(contact.json_for_company) unless contact.nil?
    hash.reverse_merge!(address.json_for_company) unless address.nil?
    hash
  end

end
