# FUNCTIONS

def say_hello
  puts "Hello"
end

say_hello # function invoked


def add_two_numbers num1, num2
  puts num1 + num2
end

add_two_numbers 2, 4

def add_three_numbers num1, num2, num3
  puts num1 + num2 + num3
end

add_three_numbers 2, 4, 8


def create_user name, course="SDET" # course argument now has a default value of 'SDET'
  puts "#{name} is on #{course}"
end

create_user "Chris"
create_user "Chris", "Devops"



# SPLATS
def say_more_words *words # splat is * attached to the argument
  puts words
  p words.to_a
end

say_more_words "Jack", "Lexie", "Steve", "Rich"


def greeting what, *people # 2 arguments
  people.each do |person|
    puts "#{what} #{person}" # writing person helps to signify that we are dealing with singular data here
  end
end

greeting "Hello", "Jack", "Lexie", "Steve", "Rich"

def greeting what, *people, time # 3 arguments, what is the starting arg, time is the last arg, people is everything in bewteen
  people.each do |person|
    puts "#{what} #{person}, the time is #{time}" # writing person helps to signify that we are dealing with singular data here
  end
end

greeting "Hello", "Jack", "Lexie", "Steve", "Rich", "1 o'clock"
