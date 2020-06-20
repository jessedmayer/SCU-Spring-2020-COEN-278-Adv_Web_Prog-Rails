class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_secure_password #so that we have user.authenticate method
  #has_secure_password: Adds methods to set and authenticate against a
  # BCrypt password.
end
