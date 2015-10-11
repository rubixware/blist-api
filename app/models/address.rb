class Address < ActiveRecord::Base

  def json_for_company
    opts = [:id, :company_id, :created_at, :updated_at]
    as_json(except: opts)
  end

end
