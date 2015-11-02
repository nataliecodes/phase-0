
# PSEUDOCODE

# 1. Make container of names list (i.e. an array)
# 2. Turn list into usable container (i.e. an array)
# 3. Split list of names into teams of 4-5 people (3 minimum if necessary)
# 4. Return these groups of names

# list of people

people = [ "Caroline Artz", "Syema Ailia", "Alan Alcesto", "Daniel Andersen", "James Artz", "Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies", "Logan Bresnahan", "William Brinkert", "Laura C.", "Scott Chou", "Bernice Anne W Chua", "Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts", "John D.", "Katy D.", "Emmanuel Kaunitz", "Amaar Fazlani", "Solomon Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gomes", "Will Granger", "Christopher M. Guard", "Adell H.", "James Hwang", "Matt H.", "Michael H.", "Peter H.", "Ryan Ho", "Igor Kazimirov", "Walter Kerr", "Karla King", "Becky Lehmann", "Malia Lehrer", "Carolina Medellin", "Timothy Meixell", "Lorena Mesa", "Chris Miklius", "Joshua Monzon", "Morgan Mccrory", "Shea Munion", "Bryan Munroe", "Neal Peters", "Trevor Newcomb", "Aleksandra Nowak", "Morgan O.", "Fatma Ocal", "Van Phan", "Luis Fernando Plaz", "Natalie Polen", "Alicia Quezada", "Celeen R.", "Jessie Richardson", "Gary S.", "Iulia S.", "Nimi Samocha", "Sarah Taurchini", "Zach Schatz", "Tal Schwartz", "Pratik Shah", "Josh Shin", "Shawn Spears", "Sasha Tailor", "Nil Thacker", "Natasha Thapliyal", "Sabrina Unrein", "Brian Wagner", "Clinton Weber", "Gregory Wehmeier", "Michael Whelpley", "Alexander Williams", "Peter N Wood", "Caitlyn Y.", "Ryan Zell"]

# INITIAL SOLUTION (very simple. I feel like this was too easy,
# but it still seems right to me.)

# def make_groups(people)
#   return people.each_slice(5).to_a
# end

# make_groups(people)

# REFACTORED

def make_groups(people)

  if people.length > 5
    new_lists = []
    new_lists = people.shuffle # using << wouldn't work here; it didn't slice/split up people at all
    p new_lists.each_slice(5).to_a
  else
    p people
  end

end

p make_groups(people)

# REFLECT

# What was the most interesting and most difficult
# part of this challenge?

# It took me a while to figure out how to shuffle the
# names so that I could return a different list each time.
# It was also kind of annoying to put all of the names into
# an array, but not horrible. I looked up both slice and
# split when I knew I wanted to break up the names and
# went from there and found each_slice pretty quickly. The
# hardest part was getting the arrays to stay as arrays.
# I didn't know I couldn't use << in line 28, above. That
# stumped me for a bit.

# Do you feel you are improving in your ability to
# write pseudocode and break the problem down?

# Not really, honestly. I think that I need to try to get
# better at it.

# Was your approach for automating this task a good solution?
# What could have made it even better?

# I think it was. I wish I could have had time to do the
# "Add complexity" challenges in release 3 (i.e. storing
# past outcomes).

# What data structure did you decide to store the accountability groups in and why?

# An array. The names were the only piece of information
# I cared about, so I thought a hash may produce
# unnecessary work.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# I learned each_slice and shuffle. It was sort of hard to
# actually find "shuffle" because a search for "random"
# ended up with a lot of rand and Random.new results,
# which were not what I wanted.