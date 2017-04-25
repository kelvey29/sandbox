class Entry
    attr_accessor :name, :number, :email
    
    def initialize(name, number, email)
        @name = name
        @number = number
        @email = email
    end
    
    def to_s
       "Name: #{@name}\nNumber: #{@number}\nEmail: #{@email}" 
    end
end