puts "+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+ +-+-+-+-+"
puts "|w|e|l|c|o|m|e| |t|o| |b|l|a|c|k| |j|a|c|k|"
puts "+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+ +-+-+-+-+"
puts " "

def player_one
  puts "Please enter your name:"
  gets.chomp
end

def dealer
end

def calculate_total
  #sum of cards
end

deck = {one: "1", two: "2", three: "3", four: "4", five: "5", size: "6", seven: "7", eight: "8", nine: "9",
  ten: "10", jack: "10", queen: "10", king: "10", ace: "1"}


#game play
#1. player and dealer are both dealt two cards to start the game
#puts "#player_one and the dealer have been dealt two cards"

#deal two cards
#if calculate_total == 21
  #puts You won! Your sum was #calculat_total, would you like to play again?
  #end until "no"

#if calculate_total > 21
  #puts You lost. Your sum was #calculate_total, would you like to play again?
  #end until no

#if calculate_total < 21
  #puts your sum is #calculate_total, would you like to hit or stay?

  #if hit deal another card
  #if stay

    #dealer is dealt two cards
    #puts dealers card sum is
    #if dealer card sum is =< 16
      #deal another card
    #if dealer card sum is =< 16
      #deal another card
    #if dealer card sum is =< 21
      #if dealer_array < player array puts "Player_one won!"
      #if dealer_array > player array puts "House won."
      #if dealer card sum is == player array puts "It's a tie
    #if dealer card sum is > 21 puts "Player_one won!"

#Bonus: 1. Save the player's name, and use it throughout the app. 2. Ask the player if he
#wants to play again, rather than just exiting. 3. Save not just the card value, but also the
#suit. 4. Use multiple decks to prevent against card counting players.
