=begin

Use hash to store data
Create empty container
Input: Add item, Remove item, Update quantities
Output: Print the list

=end

grocery_list = {}

def add_item(item, quantity, grocery_list)
  # refactored the section below these two comments in order to check if the item was already included
  if grocery_list.include?(item)
    grocery_list[item] += quantity
  # end of refactored section
  else
    grocery_list[item] = quantity
  end
end

def remove_item(item, grocery_list)
  grocery_list.delete(item)
end

def update_quantity(item, quantity, grocery_list)
  grocery_list[item] = quantity
end

def display_list(grocery_list)
  grocery_list.each do |item, quantity|
    puts "You have " + quantity.to_s + " " + item + "."
  end
end

add_item("Lemonade", 2, grocery_list)
add_item("Tomatoes", 3, grocery_list)
add_item("Onions", 1, grocery_list)
add_item("Ice Cream", 4, grocery_list)

display_list(grocery_list)

remove_item("Lemonade", grocery_list)

display_list(grocery_list)

update_quantity("Ice Cream", 1, grocery_list)

display_list(grocery_list)

add_item("Tomatoes", 2, grocery_list)

display_list(grocery_list)

=begin

What did you learn about pseudocode from working on this challenge?

  I learned that there can be multiple inputs in pseudocode. That sounds fairly obvious, but I haven't pseudocoded before with more complext inputs and outputs.

What are the tradeoffs of using Arrays and Hashes for this challenge?

  Hashes work much better, in my opinion. We didn't even discuss using arrays for this challenge because there is information that corresponds to other information. In order to use an array, I think you would have to nest arrays inside of other arrays in order to simulate the key/value pairing of hashes.

What does a method return?

  A method returns based on the last line of code executed in that method, or wherever you explicitly write "return" in your code (i.e. if you use it in a conditional statement).

What kind of things can you pass into methods as arguments?

  You can pass in hashes, arrays, strings, numbers, and other methods. You can pass in any object.

How can you pass information between methods?

  If I am reading this correctly, you can pass information between methods by defining your parameters/ojects outside of the method. For example, in the above code we defined the hash first and then created methods based on that hash.

What concepts were solidified in this challenge, and what concepts are still confusing?

  I'm still confused about starting off writing code like this - I didn't understand at first that we should define the hash and then make methods based off of it. I solidified how to pass a hash into our method, though. I also feel like I understand hashes a bit more, in general, since last week we spent very little time on them. Hoping to continue to clear up how to turn my pseudocode into actual code and how to keep straight the idea of using multiple methods to define something.

=end