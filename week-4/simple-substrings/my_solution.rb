# Simple Substrings

# I worked on this challenge by myself.

# Your Solution Below

=begin

pseudocode

1. input: address string
2. check if the address has "ca" in it
  a. if it does, say "welcome"
  b. if it doesn't say "you should move"
3. output: either a or b

=end

def welcome(address)
  if address.include?("CA")
    return "Welcome to California"
  else
    return "You should move to California"
  end
end