class AddInfoToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :name, :string
    add_column :companies, :description, :text
    add_column :companies, :category_id, :integer
    add_column :companies, :contact_id, :integer
    add_column :companies, :address_id, :integer
  end
end
