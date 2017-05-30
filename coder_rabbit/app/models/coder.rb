class Coder < ApplicationRecord
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  before_create :password, :password_confirmation, presence: true, length: {minimum: 8}
  validates :email, uniqueness: { case_sensitive:false }, format: { with: EMAIL_REGEX}
  validates :first_name, :last_name, :email, :skills, :languages, :bootcamp, :profile, presence: true


  has_many :jobs
  has_many :clients, through: :jobs

end
