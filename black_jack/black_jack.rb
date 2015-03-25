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

def shuffle_cards
  puts("|S|h|u|f|f|l|i|n|g| |C|a|r|d|s|")
  3.times do
    print ". . . . . . . . . . . . "
    sleep 0.5
  end
end

def delay
  sleep 1
end

BLACKJACK = 21
SUITS = ['Heart', 'Diamond', 'Spade', 'Clubs']
CARDS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
deck = SUITS.product(CARDS)
deck.shuffle!
player_name = player_one

begin
  shuffle_cards
  puts ""
  puts "Welcome to Blackjack #{player_name}. You and the dealer are both dealt two cards to start the game."

  player_cards = []
  dealer_cards = []

  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  player_total = calculate_total(player_cards)
  dealer_total = calculate_total(dealer_cards)

  puts "#{player_name}'s cards are #{player_cards}, for a total of #{player_total}"
  puts "The dealer's card is #{dealer_cards[0]}"
  puts ""

  # Player Blackjack
  if calculate_total(player_cards) == BLACKJACK
    puts "Congratulations, you hit blackjack! You win!"
  else
    say "#{player_name} would you like to 1) hit or 2) stay"
    hit_or_stay = gets.chomp.to_i

    if hit_or_stay == 1 #hit
      begin
        player_cards << deck.pop
        player_total = calculate_total(player_cards)
        puts "#{player_name}'s cards are #{player_cards}, for a total of #{player_total}"
        puts "#{player_name} Would you like to 1) hit or 2) stay"
        hit_or_stay = gets.chomp.to_i
      end until hit_or_stay == 2 || player_total > BLACKJACK
    end

    if dealer_total < 17
      begin
        dealer_cards << deck.pop
        dealer_total = calculate_total(dealer_cards)
        puts "The dealer takes a card."
        delay
      end until dealer_total >= 17
    end

    puts "Comparing hands..."
    delay
    puts "#{player_name}'s cards are #{player_cards}, for a total of #{player_total}"
    puts "The dealer's cards are #{dealer_cards}, for a total of #{dealer_total}"
    puts ""

    if dealer_total > BLACKJACK
      puts "#{player_name} won!"
    elsif player_total > BLACKJACK || player_total < dealer_total
      puts "House won."
    elsif player_total > dealer_total || dealer_total < BLACKJACK
      puts "#{player_name} won!"
    else
      puts "It's a tie!"
    end
  end # End Player blackjack

  say "#{player_name}, would you like to play again? Y/N"
  play_again = gets.chomp.downcase

end until play_again == "n"

puts "Good bye."
