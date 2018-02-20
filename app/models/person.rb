class Person < ApplicationRecord
    scope :clients, -> {where(type: 'Client')}
    scope :client, -> {where(type: 'Client')}
    
end
