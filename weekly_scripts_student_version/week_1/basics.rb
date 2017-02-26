# Basics of ruby



# Notes about computers:
# 1) Computers read ruby code one line at a time, top to bottom
# 2) Computers read each line according to the rules of precedence (known as the orders of operation in Math)
# 3) Computers can only do one thing at a time.  This includes reading code and evaluating it




# X) Three types of text
#   Comments: Text we write that the computer ignores
#   Commands: Text we write that the computer executes
#   Strings: Text we write that represents human language





# X) Comments: Telling the computer to ignore code
#
# Any code following this '#' (hash/pound sign) is ignored by the computer
#
# Note: to comment out multiple lines at a time in Repl.it or Sublime:
# 1) highlight the lines
# 2) type cmd-/ (mac), ctrl-/ (windows)


# Exercise
# write a comment in the console and see that it doesn't do anything




# X) Commands: Instructions for a computer
1 + 1  # Code that adds two numbers


# Exercise
#
# Do some addition in the console










# X) Strings: Talking to the user
#
# human text (english or other languages) is treated differently
# than commands and comments.  To tell the computer about human language
# we use Strings of characters

'hello' # this is a string with single quotes
"goodbye" # this is a string with double quotes


# Exercise:
#
# Use the Repl console to write some strings with both quote types

# Write your name
# Write your city name
# What happens if you want to write a contraction?: don't, won't, can't












# X) Returning values to the computer
#
1 + 1 # This code returns the value 2, but does not print anything to the user

# Note: In the console, the return value will be shown as:
# => 2

# Exercise
#
# Write some math in the Repl.it console
1 + 1 # Addition
10 * 20 # Multiplication
10 ** 2 # Powers
50 / 5 # Division





# X) Printing: Showing values to user
#
print 10 * 10 # This will print 100 to the console
puts 1 + 1 # This will print 2 to the console and then add a new line








# X) Methods: Telling the computer to do something
#
# `print` and `puts` are both "Methods"
# Methods are actions that we can tell the computer to do
#
# There are lots of built in methods, and we'll learn to create our own later

# Exercise
#
# A) Use the puts method to show the number 1 thousand to the user
#
# B) Use the print method twice, once to show the number 111, and once to show the number 222
#
# C) Use the puts method to show your name to the user
#
# D) Use the puts method to say hello to you (your name)













# X) Variables: Storing values to be used later
#
# We use variables to save values.  That way we can use those values later
# in our code
#
# To create a variable we need:
#
# Name: (Example below uses my_variable as the name)
#  - on the left side of the equal sign
#  - the variable name must be in snake_case_format.  Each word is separated by an underscore.
#      Case and punctuation matter.  No capital letters or punctuation are allowed
#  - the variable name can be anything you want.  Try to make it descriptive of
#      the data you are saving.  eg. my_age = 27
#
# Equal sign ( = ):
#  - The equal sign stores the value on the right into the variable on the left
#
# Value: (Example below uses string "This is text saved to a variable")
#  - The value is on the right side of the equal
my_variable = "This is text saved to a variable"


# Note:
# Bad names
# my-variable <= not a valid variable name
# MyVariable <= not a valid variable name
# MY_variable <= not a valid variable


# Exercise:
#
# Create a variable named my_name and set it to your name
# Create a variable that stores your age
# Create a variable that stores the result of 1 + 1




# To use a variable, we use the name we gave it
# Example:
puts my_variable # Prints the text we saved above


# Exercise:
#
# print the variable that you created to save your name




# Exercise:
#
# Get your current age:
#  1) Create a variable with the current year
#  2) Create a variable with your birth year
#  3) Subtract the two variables and store it in a new variable







# X) Gets: Asking the user for input
#
# Above we told the computer to talk to the user.  Now let's have the user talk to the computer
gets

# the gets method adds a newline to the end of the string:
#
# Example
#
# my_input = gets
# type 'hello'
# my_input # => equal to 'hello\n'
#
# to remove the newline, we need to use 'chomp'
gets.chomp




# Exercise
#
# 1) use puts method to tell the user to input something
# 2) use a variable and the gets method to save the user input
# 3) use puts method to output what the user inputted













# X) Repeating with loops
#
# Example: Infinite loop that asks user input repeatedly forever:
#
# loop do
#   gets
# end

# Note: To break infinite loop:
#   Repl.it: Hit the "Stop" button
#   irb/pry: type ctrl-c


# Exercise:
#
# Write a loop that:
#  1) asks user for input
#  2) gets input and saves it to a variable
#  3) prints the input back to the user


# When you're done:
# Comment out the loop so that it doesn't run every time
# To comment something out, select the lines and type: cmd-/









# X) Booleans: True/False
true
false






# X) Boolean comparisons: Equalities
"hello" == "hello" # returns true
"hello" == "goodbye" # returns false








# X) Conditionals: computers making decisions
#
# Exercise:
# Change `my_input` variable to make the conditional below do different things

my_input = "hello"
# my_input = "goodbye"

if my_input == "hello"
  puts "Your input was hello"
else
  puts "Your input was not hello"
end




# X) Breaking infinite loops
#
#
loop do
  break  # This will kill the loop so that it doesn't run forever
end



# Exercise
#
# Write a loop that:
#  1) Asks for user input
#  2) gets user input and saves it to a variable
#    - Note: use gets.chomp
#  3) breaks the loop if the user input is 'exit'
#  4) otherwise, prints the user input
#
# When you're done:
# Comment out the loop so that it doesn't run every time
# To comment something out, select the lines and type: cmd-/









# X) Boolean operator OR (||): multiple conditions
#
# Truth tables:
#
# true OR true => true
# true OR false => true
# false OR true => true
# false OR false => false

# Example:
"hello" == "hello" || 1 == 1 # returns true
"hello" == "goodbye" || 1 == 1 # returns true
"hello" == "hello" || 1 == 2 # returns true
"hello" == "goodbye" || 1 == 2 # returns false


# Exercise:
#   What does each boolean expression return?

my_string = "hello"
my_num = 1

my_string == "goodbye" || my_num == 1
my_string == "goodbye" || my_num == 2




# Exercise:
#
# Write a loop that:
#  1) Asks for user input
#  2) gets user input and saves it to a variable
#  3) breaks the loop if the user input is 'exit' or 'quit'
#  4) otherwise, prints the user input
#
# Note: When you're done, comment out loop so it does not run every time







# X) Boolean comparisons: inequalities
# Not equal: !=
1 != 2 # => true
1 != 1 # => false

# less than: <
1 < 2 # => true
2 < 1 # => false

# less than or equal: <=
1 <= 2 # => true

# greater than: >
1 > 2 # => false
2 > 1 # => true

# greater than or equal: >=
2 >= 1 # => true




# Exercise:  Number guessing game
#
# Write a game that:
#   1) Picks a random number between 1 and 100 and save it to a variable
#      - Note: use the `rand` method: `rand(1..100)`
#   2) starts a loop that
#     - Asks user to guess the number
#     - gets and saves user input as a number
#       Note: use `to_i` method to convert string to number
#            (to_i is short for "to integer")
#     - if user guess is answer, tell user they won
#     - if user guess is less, tell user to guess higher
#     - if user guess is greater, tell user to guess lower









