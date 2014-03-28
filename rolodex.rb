class Rolodex
	def initialize
		@contacts = []
	end
	def create_contact(first_name, last_name, email, notes)
		contact = Contact.new
		contact.first_name = first_name
		contact.last_name = last_name
		contact.email = email
		contact.notes = notes
		@contacts << contact
	end

	def show_specific_contact(last)
		contact_found = false
		found_arr = []
		@contacts.each do |contact|
			if contact.last_name == last
				contact_found = true
				found_arr << contact
			end
		end
		if contact_found ==true
			puts "********\nFOUND SOMETHING!!!\n********"
			found_arr.each{|i| puts i}
		else
			puts "********\nSorry no contacts found\n********"
		end
	end

	def show_contacts
		@contacts.each do |contact|
			puts contact
		end
	end

	def remove_contact(id)
		@contacts.delete_if{|c| c.id==id}
	end

	def edit_contact(id, new_name)
		@contacts.each do |contact|
			if contact.id==id
				contact.name = new_name
			end
		end
	end
end
