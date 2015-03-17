
def user_input(record)
  puts "=> What's the first number?"
  input = gets.chomp
  puts "=> What's the second number?"
  input = gets.chomp
  puts "=> 1) add 2) subtract 3) multiply 4) divide"
  input = gets.chomp
end

# def say(msg)
#   puts "=> #{msg}"
# end

while true do
  num1 = user_input("first")
  num2 = user_input("second")
  operator = user_input("third")

  result = case operator
    when '1' then num1.to_i + num2.to_i
    when '2' then num1.to_i - num2.to_i
    when '3' then num1.to_i * num2.to_i
    when '4' then num1.to_f / num2.to_f
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
