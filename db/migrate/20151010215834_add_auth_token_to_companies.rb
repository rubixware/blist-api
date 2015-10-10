class AddAuthTokenToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :auth_token, :string, null: false, default: ""
    add_index  :companies, :auth_token, unique: true
  end
end
