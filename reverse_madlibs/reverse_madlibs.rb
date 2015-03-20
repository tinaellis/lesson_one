puts "+-+-+-+-+-+-+ +-+-+-+ +-+-+-+-+-+-+-+"
puts "|D|O|C|T|O|R| |W|H|O| |M|A|D|L|I|B|S|"
puts "+-+-+-+-+-+-+ +-+-+-+ +-+-+-+-+-+-+-+"

nouns = File.open('nouns.txt', 'r') do |f|
  f.read
end.split

verbs = File.open('verbs.txt', 'r') do |f|
  f.read
end.split

adjectives = File.open('adjectives.txt', 'r') do |f|
  f.read
end.split

def say(msg)
  puts ("=> #{msg}")
end

def exit_with(msg)
  say msg
  exit
end

def person_one
  puts "Input the name of The Doctor's Companion:"
  STDIN.gets.chomp
end

def person_two
  puts "Input the name of the Companion's friend:"
  STDIN.gets.chomp
end

def doctor
  puts "Who's your favorite Doctor?"
  STDIN.gets.chomp
end

contents = File.open('sample.txt', 'r') do |f|
  f.read
end

contents.gsub!('NOUN').each do
  nouns.sample
end

contents.gsub!('VERB').each do
  verbs.sample
end

contents.gsub!('ADJECTIVE').each do
  adjectives.sample
end

contents.gsub!('PERSONONE', person_one)
contents.gsub!('PERSONTWO', person_two)
contents.gsub!('FAVORITEDOCTOR', doctor)

p contents
exit

### Additional Program Options ###
# ............... #
# to run this application via the command line using: "ruby reverse_madlibs.rb sample.txt"
# you can remove contents and replace with the following..
# exit_with("no input file") if ARGV.empty?
# exit_with("file doesn't exist") if !File.exists?(ARGV[0])

# contents = File.open(ARGV[0], 'r') do |f|
#   f.read
# end
# ............... #
# to get information from user for each noun, use the following instead
# def get_input(noun)
#   puts "Input the name of a person:"
#   STDIN.gets.chomp
# end

# contents.gsub!('NOUN') do |noun|
#   get_input(noun)
# end
# ............... #
