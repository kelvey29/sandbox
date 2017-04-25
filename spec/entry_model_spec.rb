require_relative '../models/entry'

RSpec.describe Entry do
   describe "attributes" do
       let(:entry) { Entry.new('mike', '222-2222', 'mike@mike.com') }
       it "responds to name" do 
           expect(entry).to respond_to(:name)
       end
       it "reports its name" do
           expect(entry.name).to eq('mike')
       end
       
       it "responds to number" do 
           expect(entry).to respond_to(:number)
       end
       it "reports its number" do
           expect(entry.number).to eq('222-2222')
       end
       
       it "responds to email" do 
           expect(entry).to respond_to(:email)
       end
       it "reports its email" do
           expect(entry.email).to eq('mike@mike.com')
       end
   end
   
   describe "#to_s" do
       it "prints an entry as a string" do 
          entry = Entry.new('mike', '222-2222', 'mike@mike.com')
          expected_string = ("Name: mike\nNumber: 222-2222\nEmail: mike@mike.com")
          expect(entry.to_s).to eq(expected_string)
       end
   end
end