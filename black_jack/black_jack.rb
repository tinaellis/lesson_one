puts "+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+-+-+-+"
puts "|w|e|l|c|o|m|e| |t|o| |b|l|a|c|k|j|a|c|k|"
puts "+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+-+-+-+"
puts " "

def player_one
  say "Please enter your name:"
  gets.chomp
end

def say(msg)
  puts "=> #{msg}"
end

def calculate_total(cards) #[['heart','2'],['diamond','3']]
  arr = cards.map{ |e| e[1] }

  total = 0
  arr.each do |value|
    if value == "A"
      total += 11
    elsif value.to_i == 0 # J, Q, K
      total += 10
    else
      total += value.to_i # Face Value Cards
    end
  end

  #correct for aces
  arr.select{|e| e == "A"}.count.times do
    total -= 10 if total > 21
  end

  total
end

suits = ['Heart', 'Diamond', 'Spade', 'Clubs']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
deck = suits.product(cards)
deck.shuffle!

player_name = player_one

begin
  player_cards = []
  dealer_cards = []
  puts "-- START --"
  puts "Welcome to Blackjack #{player_name}. You and the dealer are both dealt two cards to start the game."

  player_cards << deck.pop
  dealer_cards << deck.pop
  player_cards << deck.pop
  dealer_cards << deck.pop

  puts "#{player_name}'s cards are #{player_cards}, for a total of #{calculate_total(player_cards)}"
  puts "The dealer's cards are #{dealer_cards}, for a total of #{calculate_total(dealer_cards)}"
  puts ""

  # Player Blackjack
  if calculate_total(player_cards) == 21
    puts "Congratulations, you hit blackjack! You win!"
  else
    say "#{player_name} would you like to 1) hit or 2) stay"
    hit_or_stay = gets.chomp.to_i

    if hit_or_stay == 1 #hit
      begin
        player_cards << deck.pop
        puts "#{player_name}'s cards are #{player_cards}, for a total of #{calculate_total(player_cards)}"
        puts "#{player_name} Would you like to 1) hit or 2) stay"
        hit_or_stay = gets.chomp.to_i
      end until hit_or_stay == 2 || calculate_total(player_cards) > 21
    end

    if calculate_total(dealer_cards) < 17
      begin
        dealer_cards << deck.pop
        puts "The dealer takes a card."
      end until calculate_total(dealer_cards) >= 17
    end

    puts "Comparing hands..."
    puts "#{player_name}'s cards are #{player_cards}, for a total of #{calculate_total(player_cards)}"
    puts "The dealer's cards are #{dealer_cards}, for a total of #{calculate_total(dealer_cards)}"
    puts ""

    if calculate_total(dealer_cards) > 21
      puts "#{player_name} won!"
    elsif calculate_total(player_cards) > 21 || calculate_total(player_cards) < calculate_total(dealer_cards)
      puts "House won."
    elsif calculate_total(player_cards) > calculate_total(dealer_cards) || calculate_total(dealer_cards) < 21
      puts "#{player_name} won!"
    else
      puts "It's a tie!"
    end

  end # End Player blackjack

    say "#{player_name}, would you like to play again? Y/N"
    play_again = gets.chomp.downcase

end until play_again == "n"

puts "Good bye."
