class Fee < ApplicationRecord
  belongs_to :fee_type
  has_many :payments
end
