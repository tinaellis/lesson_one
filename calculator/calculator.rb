def user_input(record)
  puts "=> What's the #{record} number?"
  gets.chomp
end

while true do
  num1 = user_input("first")
  num2 = user_input("second")

  begin
    puts "=> What would you like to do? 1) add 2) subtract 3) multiply 4) divide"
    operator = gets.chomp
  end until %w(1 2 3 4).include?(operator)

  result = case operator
    when '1' then num1.to_i + num2.to_i
    when '2' then num1.to_i - num2.to_i
    when '3' then num1.to_i * num2.to_i
    when '4' then num1.to_f / num2.to_f
  end

  puts "Result is #{result}"
  puts "Would you like to perform another calculation? (Y/N)"
  calculate_again = gets.chomp.upcase

  until calculate_again == 'Y' || calculate_again == 'N'
    puts "Invalid input. Try again."
    puts "Would you like to perform another calculation? (Y/N)"
    calculate_again = gets.chomp.upcase
  end

  if calculate_again == 'N'
      break
  elsif calculate_again == 'Y'
      true
  end
end

puts "Good bye for now!"
