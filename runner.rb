require './rolodex'
require './contact'

class Runner
	def initialize
		@rolodex = Rolodex.new
	end
	
	def main_menu
		puts "Amazing CRM"
		puts "1. Add a contact"
		puts "2. See all contacts"
		puts "0. To Exit"
		puts "3. Remove a Contact"
		puts "4. Edit a contact"
	end

	def add_contact
		puts "Enter Customer's Name"
		name = gets.chomp
		@rolodex.create_contact(name)
		puts "................"
	end

	def remove_contact
		puts "Enter contact's ID to remove it"
		id = gets.chomp.to_i
		@rolodex.remove_contact(id)
	end

	def show_contacts
		@rolodex.show_contacts
	end
	
	def edit_contact
		puts "Enter contact ID to edit"
		id = gets.chomp.to_i
		@rolodex.remove_contact(id)
		puts "Enter new contact name"
		new_name = gets.chomp
		@rolodex.edit_contact(id, new_name)
	end

	def run
		done = false
		while !done
			main_menu
			input = gets.chomp.to_i
			if input==0
				done = true
			elsif input==1
				add_contact
			elsif input==2
				show_contacts
			elsif input==3
				remove_contact
			elsif input==4
				edit_contact
			end
		end
	end
end

runner = Runner.new
runner.run

