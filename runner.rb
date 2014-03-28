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
		puts "5. Show a specific contact (find customer by last name)"
		puts "0. To Exit"
	end

	def add_contact
		puts "Enter Customer First Name"
		first_name = gets.chomp.downcase
		######
		puts "Enter Customer Last Name"
		last_name = gets.chomp.downcase
		######
		puts "Enter Customer Email"
		email = gets.chomp
		######
		puts "Enter Customer Notes (if relevant)"
		notes = gets.chomp
		#######
		@rolodex.create_contact(first_name, last_name, email, notes)
		puts "........"
	end

	def show_specific_contact
		puts "Search by:\n1. ID\n2. Last Name\n3. First Name"
		choice = gets.chomp.to_i
		if choice==1
			@rolodex.show_specific_id
		elsif choice==2
			@rolodex.show_specific_last
		elsif choice==3
			@rolodex.show_specific_first
		end
	end

	def remove_contact
		puts "Enter contact's ID to remove it"
		id = gets.chomp.to_i
		@rolodex.remove_contact(id)
	end

	def show_contacts
		@rolodex.show_contacts
	end
	
	def attribute_menu
		puts "Enter:"
		puts "1. for 'First Name'"
		puts "2. for 'Last Name'"
		puts "3. for 'Email'"
		puts "4. for 'Notes'"
		puts "0 to exit"
	end

	def edit_contact
		puts "Enter contact ID"
		id = gets.chomp.to_i
		done = false
		while !done
			attribute_menu
			option = gets.chomp.to_i
			if option==0
				done = true
				main_menu
			elsif option==1
				puts "Enter new 'First Name'"
				first_name = gets.chomp
				@rolodex.change_first_name(id, first_name)
			elsif option==2
				puts "Enter new 'Last Name'"
				last_name = gets.chomp
				@rolodex.change_last_name(id, last_name)
			elsif option==3
				puts "Enter new 'Email'"
				email = gets.chomp
				@rolodex.change_email(id, email)
			elsif option==4
				puts "Add a new Note"
				note = gets.chomp
				@rolodex.add_note(id, note)
			end
		end
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

