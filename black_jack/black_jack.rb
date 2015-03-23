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

suits = ['Heart', 'Diamond', 'Spade', 'Clubs']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
deck = suits.product(cards)
deck.shuffle!

player_cards = []
dealer_cards = []

#game play
puts "player and dealer are both dealt two cards to start the game"

player_cards << deck.pop
dealer_cards << deck.pop
player_cards << deck.pop
dealer_cards << deck.pop

puts "player cards are #{player_cards}"
puts "dealer cards are #{dealer_cards}"

puts "Would you like to 1) hit or 2) stay"
hit_or_stay = gets.chomp

if hit_or_stay = 1
  begin
    player_cards << deck.pop
    dealer_cards << deck.pop

    puts "player cards are #{player_cards}"
    puts "dealer cards are #{dealer_cards}"
  end #until player_card == 21

end
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
