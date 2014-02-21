#define the inventory
inventory = {
	"ketchup" => 3,
	"mayonnaise" => 10,
	"mustard" => 5,
	"hot_sauce" => 7
}
	
	inv_items = ["ketchup", "mayonnaise", "mustard", "hot_sauce"]
 #print out the current inventory in rows

 #define a method to print out the inventory

def print_inventory inventory
	inventory.each_with_index do |items, index|
	puts "#{index+1}" + "." + "#{items[0]}" + "-" + "#{items[1]}"
end
end

print_inventory (inventory)

#ask the user what item number they wish to modify
puts "Which item number would you like to modify?"
item_number = gets.chomp.to_i


#do you wish to edit the name? y/n
puts "do you wish to edit the name?: y/n"
edit_answer = gets.chomp
if edit_answer = "y"
	puts "enter the new name"
	new_name = gets.chomp
	#identify which key the number corresponds to using keys method
	current_name = inventory.keys[item_number-1]
	#capture the quantity of that item before deletion
	current_quantity = inventory[current_name]

	inventory.delete (current_name)
	#add new item to inventory
	inventory[new_name] = current_quantity
else
end

#print_inventory(inventory)

#ask the user what the new value is
puts "do you wish to add/subtract or set new values?\n" "1: add/subtract\n" "2: set new values"
edit_method = gets.chomp
if edit_method == "1"
	puts "enter the offset value"
	offest_value = gets.chomp.to_i
	#set the new value for 






new_quantity = gets.chomp.to_i

item = inv_items[item_number-1]

# puts "you chose to edit #{item.to_s}"
puts
inventory[item] = new_quantity


print_inventory (inventory)

