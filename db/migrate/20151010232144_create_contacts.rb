class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :website
      t.string :email
      t.string :facebook
      t.string :twitter
      t.string :phone
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
