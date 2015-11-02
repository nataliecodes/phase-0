
# PSEUDOCODE

# 1. Make container of names list (i.e. an array)
# 2. Turn list into usable container (i.e. an array)
# 3. Split list of names into teams of 4-5 people (3 minimum if necessary)
# 4. Return these groups of names

# list of people

people = [ "Caroline Artz", "Syema Ailia", "Alan Alcesto", "Daniel Andersen", "James Artz", "Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies", "Logan Bresnahan", "William Brinkert", "Laura C.", "Scott Chou", "Bernice Anne W Chua", "Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts", "John D.", "Katy D.", "Emmanuel Kaunitz", "Amaar Fazlani", "Solomon Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gomes", "Will Granger", "Christopher M. Guard", "Adell H.", "James Hwang", "Matt H.", "Michael H.", "Peter H.", "Ryan Ho", "Igor Kazimirov", "Walter Kerr", "Karla King", "Becky Lehmann", "Malia Lehrer", "Carolina Medellin", "Timothy Meixell", "Lorena Mesa", "Chris Miklius", "Joshua Monzon", "Morgan Mccrory", "Shea Munion", "Bryan Munroe", "Neal Peters", "Trevor Newcomb", "Aleksandra Nowak", "Morgan O.", "Fatma Ocal", "Van Phan", "Luis Fernando Plaz", "Natalie Polen", "Alicia Quezada", "Celeen R.", "Jessie Richardson", "Gary S.", "Iulia S.", "Nimi Samocha", "Sarah Taurchini", "Zach Schatz", "Tal Schwartz", "Pratik Shah", "Josh Shin", "Shawn Spears", "Sasha Tailor", "Nil Thacker", "Natasha Thapliyal", "Sabrina Unrein", "Brian Wagner", "Clinton Weber", "Gregory Wehmeier", "Michael Whelpley", "Alexander Williams", "Peter N Wood", "Caitlyn Y.", "Ryan Zell"]

# INITIAL SOLUTION (very simple. I feel like this was too easy,
# but it still seems right to me.)

def make_groups(people)
  return people.each_slice(5).to_a
end

make_groups(people)

# REFACTORED

# def make_groups(people)



# end

# REFLECT

# What was the most interesting and most difficult
# part of this challenge?


# Do you feel you are improving in your ability to
# write pseudocode and break the problem down?


# Was your approach for automating this task a good solution?
# What could have made it even better?


# What data structure did you decide to store the accountability groups in and why?


# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

