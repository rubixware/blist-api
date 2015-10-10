require 'securerandom'
module Tokenizable
  extend ActiveSupport::Concern

    def save_with_new_token!
      auth_token = generate_authentication_token!
      update_attributes({ auth_token: auth_token })
      auth_token
    end

    def generate_authentication_token!
      SecureRandom.uuid.gsub(/\-/,'')
    end


end
