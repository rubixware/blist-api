class AddTagsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :tags, :integer, array: true, default: []
  end
end
