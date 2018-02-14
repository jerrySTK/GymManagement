class Client < Person
    validates_presence_of :name,:last_name,:telephone

end
