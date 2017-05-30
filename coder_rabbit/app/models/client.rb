class Client < ApplicationRecord
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  before_create :password, :password_confirmation, presence: true, length: {minimum: 8}

  validates :company_name, :admin_name, :email, :profile, presence: true


  has_many :jobs
  has_many :coders, through: :jobs

end
