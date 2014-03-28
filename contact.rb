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

	attr_accessor :notes, :name, :id

	def initialize
		@id = Contact.get_id
	end

	def to_s
		"ID: #{@id}\nName: #{@name}\nNotes: #{@notes}"
	end

	def self.get_id
		@@counter += 1
		@@counter
	end
end



