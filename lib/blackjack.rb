def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
hand = deal_card + deal_card
display_card_total(hand)
hand
end

def hit?(current_total)
 prompt_user
 action = get_user_input
 if action == "s"
   current_total
 elsif action == "h"
  new_hand = current_total + deal_card
  new_hand
else
  invalid_command
 end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  final_hand = initial_round
  until final_hand > 21
    final_hand = hit?(final_hand)
    display_card_total(final_hand)
  end
  end_game(final_hand)
end
    
