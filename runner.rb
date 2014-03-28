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
		puts "3. Remove a contact"
		puts "4. Edit a contact"
		puts "5. Show a specific contact"
		puts "0. To Exit"
	end

	def add_contact
		puts "Enter Customer First Name"
		first_name = gets.chomp
		######
		puts "Enter Customer Last Name"
		last_name = gets.chomp
		######
		puts "Enter Customer Email"
		email = gets.chomp
		######
		puts "Enter Customer Notes (if relevant)"
		notes = gets.chomp
		#######
		@rolodex.create_contact(first_name, last_name, email, notes)
		puts "................"
	end

	def show_specific_contact
		puts "Enter contact last name"
		last_name = gets.chomp
		@rolodex.show_specific_contact(last_name)
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
		puts "Enter new first name"
		new_first_name = gets.chomp
		@rolodex.edit_contact(id, new_first_name)
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
			elsif input==5
				show_specific_contact
			end
		end
	end
end

runner = Runner.new
runner.run

