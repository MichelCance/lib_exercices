def ask_first_name
  puts "Comment vous prénommez-vous ?"
  print "❯ "
  return String(gets.chomp)
end

def say_hello(first_name)
  puts "Bien le bonjour, #{first_name}"
end

say_hello(ask_first_name)