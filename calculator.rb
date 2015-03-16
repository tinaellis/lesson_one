def say(msg)
  puts "=> #{msg}"
end

while true do
  say "What's the first number?"
  num1 = gets.chomp

  say "What's the second number?"
  num2 = gets.chomp

  say "1) add 2) subtract 3) multiply 4) divide"
  operator = gets.chomp

  if operator == '1'
    result = num1.to_i + num2.to_i
  elsif operator == '2'
    result = num1.to_i - num2.to_i
  elsif operator == '3'
    result = num1.to_i * num2.to_i
  elsif operator == '4'
    result = num1.to_f / num2.to_f
  else
    puts "Did not recognize a number between 1-4. Sorry."
  end

puts "Result is #{result}"
puts "Would you like to perform another calculation? (Y/N)"
rep_calc = gets.chomp.upcase

  until rep_calc == 'Y' || rep_calc == 'N'
    puts "Invalid input. Try again."
    puts "Would you like to perform another calculation? (Y/N)"
    rep_calc = gets.chomp.upcase
  end

  if rep_calc == 'N'
    break
  elsif rep_calc == 'Y'
    true
  end
end
