class Company < ActiveRecord::Base
  extend Sessionable
  include Tokenizable

  devise :database_authenticatable,
         :authentication_keys => [:email]

  validates_presence_of     :email
  validates_uniqueness_of   :auth_token
  validates_presence_of     :password, on: :create
  validates_confirmation_of :password, on: :create
  before_create :generate_authentication_token!

  def self.for_index(params)
    all
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if email = conditions.delete(:email)
      where(conditions.to_hash)
      .where(["lower(email) = :value ",{ value: email }])
      .first
    else
      where(conditions.to_hash).first
    end
  end

end
