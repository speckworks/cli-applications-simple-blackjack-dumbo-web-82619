require "pry"
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_sum)
  puts "Your cards add up to #{card_sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card)
 puts "Sorry, you hit #{card}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(get_user_input)
 prompt_user
 get_user_input
  if get_user_input == s;
    display_card_total
  elsif get_user_input ==h; 
    deal_card
    display_card_total
  else puts "Please enter a valid command"
    prompt_user
  end
  display_card_total
end
binding.pry

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
