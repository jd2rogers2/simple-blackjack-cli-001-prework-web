def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(hand)
  puts "Your cards add up to #{hand}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  action = gets.chomp
end

def end_game(hand)
  puts "Sorry, you hit #{hand}. Thanks for playing!"
end

def initial_round
hand = deal_card + deal_card
display_card_total(hand)
hand
end

def hit?(hand)
  prompt_user
  action = get_user_input
if action == "h"
  hand = hand + deal_card
  hand
elsif action == "s"
hand = hand
hand
else
  invalid_command
  prompt_user
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
  finalhand = initial_round
  until finalhand > 21 do
  finalhand = hit?(finalhand)
  display_card_total(finalhand)
end
  end_game(finalhand)
end
    
