require_relative '../models/address_book'

RSpec.describe AddressBook do
   describe "attributes" do 
      it "responds to entries" do 
         book = AddressBook.new
         expect(book).to respond_to(:entries)
      end
      
      it "initializes entries as an array" do 
         book = AddressBook.new
         expect(book.entries).to be_an(Array)
      end
      
      it "initializes entries as an empty array" do 
         book = AddressBook.new
         expect(book.entries.size).to eq(0)
      end
   end
   
   describe "#add_entry" do
      it "adds only one entry to the address_book" do 
         book = AddressBook.new
         book.add_entry('mike', '222-2222', 'mike@mike.com') 
         expect(book.entries.size).to eq(1)
      end
      
      it "adds the correct information to entries" do
         book = AddressBook.new
         book.add_entry('mike', '222-2222', 'mike@mike.com')
         new_entry = book.entries[0]
         
         expect(new_entry.name).to eq('mike')
         expect(new_entry.number).to eq('222-2222')
         expect(new_entry.email).to eq('mike@mike.com')
      end
   end
   
   describe "#delete_entry" do
      it "deletes an entry" do 
         book = AddressBook.new
         book.add_entry('mike', '222-2222', 'mike@mike.com')
         
         name = 'tom'
         number = '333-3333'
         email = 'tom@tom.com'
         book.add_entry(name, number, email)
         
         expect(book.entries.size).to eq(2)
         book.delete_entry(name, number, email)
         expect(book.entries.size).to eq(1)
         expect(book.entries.first.name).to eq('mike')
      end
   end
end

