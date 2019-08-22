require "pry"
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def card_total(card_sum)
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

# def hit?(card_total)
# prompt_user
# input = get_user_input
#   if input == "s";
#     card_total
#   elsif get_user_input =="h"; 
#     card_total += deal_card
#   else invalid_command
#     hit?(card_total)
#   end
# end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 's'
    card_total
  elsif input == 'h'
    card_total += deal_card
  else 
    invalid_command
    hit?(card_total)
  end
end



# binding.pry

def invalid_command
   puts "Please enter a valid command"
   prompt_user
   get_user_input
end
# binding.pry

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
