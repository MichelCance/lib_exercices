def ask_first_name
  puts "Comment vous prénommez-vous ?"
  print "❯ "
  first_name= gets.chomp
  first_name
end

def say_hello(first_name)
  puts "Bien le bonjour, #{first_name}"
end

first_name = ask_first_name()
say_hello(first_name)