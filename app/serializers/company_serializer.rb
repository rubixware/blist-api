class CompanySerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :description,
             :contact_id, :address_id, :category

  def category
    object.category.try(:name)
  end
  
end
