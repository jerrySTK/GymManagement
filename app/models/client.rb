class Client < Person
    validates_presence_of :name,:last_name,:telephone
    has_many :payments, foreign_key: 'person_id'

    def full_name
        [name,last_name].join(' ')
    end
end
