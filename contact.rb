#As a ...
#I want ...
#So that...
#remove a cutomer
#add a customer
#add details
#add telephone, address, email
#change customer info
#see customer info
#take notes
#present notes
#sort notes
#CREATE CUSTOMER
## other 3 ways of creating class methods

class Contact
	@@counter = 1000

	attr_accessor :notes, :first_name, :last_name, :email, :id

	def initialize
		@id = Contact.get_id
		@first_name = ""
		@last_name = ""
		@notes = []
		@email = ""
	end

	def to_s
		"ID: #{@id}\nFirst Name: #{@first_name.capitalize}\nLast Name: #{@last_name.capitalize}\nEmail: #{@email}\nNotes: #{@notes}\n********"
	end

	def self.get_id
		@@counter += 1
		@@counter
	end
end



