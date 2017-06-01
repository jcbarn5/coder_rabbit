class Job < ApplicationRecord
  belongs_to :coder
  belongs_to :client

  validates :description, length: {minimum: 160}
  validates :in_progess, :completed, :description, :amount, :client_id, presence: true
end
