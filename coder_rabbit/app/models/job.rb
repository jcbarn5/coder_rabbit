class Job < ApplicationRecord
  belongs_to :coder
  belongs_to :client
end
