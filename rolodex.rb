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
		puts "Contact Successfully Added"
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
			puts "........\nFOUND SOMETHING!!!\n........"
			found_arr.each{|i| puts i}
		else
			puts "........\nSorry no contacts found\n........"
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

	def change_first_name(id, new_first)
		@contacts.each do |contact|
			if contact.id==id
				contact.first_name = new_first
			end
		end
	end

	def change_last_name(id, new_last)
		@contacts.each do |contact|
			if contact.id==id
				contact.last_name = new_last
			end
		end
	end

	def change_email(id, email)
		@contacts.each do |contact|
			if contact.id==id
				contact.email = email
			end
		end
	end

	def add_note(id, note)
		@contacts.each do |contact|
			if contact.id==id
				contact.notes = note
			end
		end
	end

end#Class close
