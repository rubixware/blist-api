class CompanySerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :description, :address_id, :category_id, :tags

  def tags
    object.tags_objects
  end

  def attributes(*args)
    hash = super
    contact = object.contact
    hash.reverse_merge!(contact.json_for_company) unless contact.nil?
    hash
  end

end
