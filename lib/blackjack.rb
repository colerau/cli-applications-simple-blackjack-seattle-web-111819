require "pry"

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  random_number = rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type \'h\' to hit or \'s\' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.strip
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_one = deal_card 
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
  card_total
end

def hit?(current_card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  until input == "h" || input == "s"
    invalid_command
    prompt_user
    input = get_user_input
  end 
  if input == "h"
    card = deal_card
    current_card_total + card 
  elsif input == "s"
    current_card_total
  end 
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round
  while hand <= 21 
    hand = hit?(hand) #confusing me 
    display_card_total(hand)
  end 
  end_game(hand)
end
    

