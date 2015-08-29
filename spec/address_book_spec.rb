require_relative '../models/address_book.rb'

RSpec.describe AddressBook do
  context "attributes" do
    it "should respond to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "should initialize entries as an array" do
      book = AddressBook.new
      expect(book.entries).to be_a(Array)
    end

    it "should initialize entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq 0
    end
  end

  context "#add_entry" do
    it "adds only one entry to the address book" do
       book = AddressBook.new
       book.add_entry('Kevin Kornafel', '610-532-8915', 'kevin@aol.com') 
       
       expect(book.entries.size).to eq 1
    end
   
    it "adds the correct information to entries" do
      book = AddressBook.new
      book.add_entry('Kevin Kornafel', '610-532-8915', 'kevin@aol.com') 
       new_entry = book.entries[0]

       expect(new_entry.name).to eq 'Kevin Kornafel'
       expect(new_entry.phone_number).to eq '610-532-8915'
       expect(new_entry.email).to eq 'kevin@aol.com'
    end
  end
end