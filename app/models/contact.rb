class Contact < ActiveRecord::Base

  def json_for_company
    opts = [:id, :company_id, :created_at, :updated_at, :email]
    as_json(except: opts).merge!({contact_email: email})
  end
end
