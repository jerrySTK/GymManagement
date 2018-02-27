class Payment < ApplicationRecord
  belongs_to :client, class_name: 'Person', foreign_key: 'person_id'
  belongs_to :fee
  validates :fee_id,:amount, presence: true
end
