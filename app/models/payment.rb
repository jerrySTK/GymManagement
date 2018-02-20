class Payment < ApplicationRecord
  belongs_to :client, class_name: 'Person', foreign_key: 'person_id'
  validates :duration,:amount, presence: true
end
