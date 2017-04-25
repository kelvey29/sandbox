require_relative 'entry'

class AddressBook
    attr_reader :entries
    
    def initialize 
       @entries = [] 
    end
    
    def add_entry(name, number, email)
        index = 0
        entries.each do |x|
           if name < x.name
              break 
           end
        index += 1
        end
        
        entries.insert(index, Entry.new(name, number, email))
    end
    
    def delete_entry(name, number, email)
        @entries.delete_if do |x|
            x.name == name 
            x.number == number
            x.email == email
        end
    end
end