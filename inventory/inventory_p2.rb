#step 4b. define your methods (build and test iteratively)

def get_action menu_actions
	puts "What would you like to do?"
	menu_actions.each_with_index do |action, index|
		puts "#{index+1}." + " #{action}"
	end
	return gets.chomp.to_i - 1
end

#define a method to print out the inventory

def print_inventory inventory
	inventory.each_with_index do |(key, value), index|
	puts "#{index+1}" + "." + "#{key}" + "-" + "#{value}"
end
end

def edit_name inventory
	#ask the user what item number they wish to modify
	puts "Which item number would you like to modify?"
	item_number = gets.chomp.to_i

	puts "enter the new name"
	new_name = gets.chomp
	#identify which key the number corresponds to using keys method
	current_name = inventory.keys[item_number-1]
	#capture the quantity of that item before deletion
	current_quantity = inventory[current_name]

	inventory.delete (current_name)
	#add new item to inventory
	inventory[new_name] = current_quantity

end

def edit_quantity inventory
	#ask the user what item number they wish to modify
	puts "Which item number would you like to modify?"
	item_number = gets.chomp.to_i

	#ask the user what the new value is
	puts "do you wish to add/subtract or set new values?\n" "1: add/subtract\n" "2: set new values"
	edit_method = gets.chomp
	if edit_method == "1"
		puts "enter the offset value"
		offset_value = gets.chomp.to_i
		#set the new value for the item

		#identify which key the number corresponds to using keys method
		current_name = inventory.keys[item_number-1]
		#capture the quantity of that item before deletion
		current_quantity = inventory[current_name]
		inventory[current_name] = current_quantity + offset_value

	else
		puts "enter the quantity"
		new_quantity = gets.chomp.to_i
		#identify which key the number corresponds to using keys method
		current_name = inventory.keys[item_number-1]
		#change the key value
		inventory[current_name] = new_quantity
	end

end

def add_item inventory
	puts "enter the name for new item"
	new_name = gets.chomp
	puts "enter the quantity of the new item"
	new_quantity = gets.chomp
	inventory[new_name] = new_quantity
end

def remove_item inventory
	#ask the user what item number they wish to modify
	puts "Which item number would you like to remove?"
	item_number = gets.chomp.to_i

	current_name = inventory.keys[item_number-1]

	inventory.delete (current_name)


end




# step 1. define the inventory hash
inventory = {
	"ketchup" => 3,
	"mayonnaise" => 10,
	"mustard" => 5,
	"hot_sauce" => 7
}
	
# step 2.define your actions to take array
menu_actions = ['Edit Item Name', 'Edit Item Quantity', 'Add Item', 'Remove Item', 'Exit']

# step 3. define constants to clarify main loop
EDIT_NAME = 0
EDIT_QUANTITY = 1
ADD_ITEM = 2
REMOVE_ITEM = 3
EXIT = 4

# step 4a. program body

while true


	#assign return value from method get action, and hence call that method

	get_action_return = get_action(menu_actions)
 
	print_inventory (inventory)

	if get_action_return == EDIT_NAME
		edit_name(inventory)

	elsif get_action_return == EDIT_QUANTITY
		edit_quantity(inventory)

	elsif get_action_return == ADD_ITEM
		add_item(inventory)

	elsif get_action_return == REMOVE_ITEM
		remove_item(inventory)

	elsif get_action_return == EXIT
		break

	end
	print_inventory(inventory)
end
