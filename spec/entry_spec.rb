require_relative '../models/entry.rb'

RSpec.describe Entry do
    
    context "attributes" do
        it "should respond to name" do
            entry = Entry.new('Kevin Kornafel', '610-324-8915', 'kevin@aol.com')
            expect(entry).to respond_to(:name)
        end
        
        it "should respond to phone number" do
            entry = Entry.new('Kevin Kornafel', '610-324-8915', 'kevin@aol.com')
            expect(entry).to respond_to(:phone_number)
        end
        
        it "should respond to email" do
            entry = Entry.new('Kevin Kornafel', '610-324-8915', 'kevin@aol.com')
            expect(entry).to respond_to(:email)
        end
    end
            
     context "#to_s" do
         it "prints an entry as a string" do
             entry = Entry.new('Kevin Kornafel', '610-324-8915', 'kevin@aol.com')
             expected_string = "Name: Kevin Kornafel\nPhone Number: 610-324-8915\nEmail: kevin@aol.com"
             expect(entry.to_s).to eq(expected_string)
         end
     end
     
end