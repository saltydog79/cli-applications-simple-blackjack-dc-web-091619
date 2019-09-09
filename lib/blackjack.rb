def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  number = rand 1...11
  return number
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
n =  deal_card
y =  deal_card
  sum = n + y
  display_card_total(sum)
  return sum
end

def hit?(number)
  prompt_user
  input = get_user_input
until input == "h" || input == "s"
  invalid_command
  prompt_user
  input = get_user_input
end
if input == "h"
      number += deal_card
  elsif input == "s"
     number
end
end


def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
  hit?
  display_card_total
  end
end

# def runner
#   welcome
#   card_total = initial_round
#   until card_total > 21
#     card_total = hit?(card_total)
#     display_card_total(card_total)
#   end
#   end_game(card_total)
# end
