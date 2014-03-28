class Rolodex
	def initialize
		@contacts = []
	end
	def create_contact(name)
		contact = Contact.new
		contact.name = name
		@contacts << contact
	end

	def display_detail(detail)

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
