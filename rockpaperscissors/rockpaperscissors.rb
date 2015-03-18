def display_winning_message(winning_choice)
  case winning_choice
    when 'p' then puts 'Paper wraps Rock!'
    when 'r' then puts 'Rock smashes Scissors!'
    when 's' then puts 'Scissors cuts Paper!'
  end
end

CHOICES = {'p' => 'Paper', 's' => 'Scissors', 'r' => 'Rock'}
puts "Let's play rock paper scissors!"

loop do
  #player makes selection
  begin
    puts "choose one: (P/R/S)"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  #computer makes selection
  computer_choice = CHOICES.keys.sample

  if player_choice == computer_choice
    puts "It's a tie!"
  elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p')
    display_winning_message(player_choice)
    puts "You won!"
  else
    display_winning_message(computer_choice)
    puts "Computer won!"
  end

  puts "Play again? (y/n)"
  break if gets.chomp.downcase != 'y'

end

puts "Good bye!"
