$password = "thundercats"

def sign_up
  puts "Est-ce que Monsieur souhaite enregistrer un nouveau mot de passe?"
  print "Merci de saisir le nouveau mot de passe: "
  $password = String(gets.chomp)

  puts "Nous enregistrons le mot de passe. Merci de patienter!"
  sleep(2)
  welcome_screen
end

def login
  puts "Est-ce que Monsieur souhaite se connecter à sa session?"
  print "Si Monsieur veut bien se donner la peine de saisir son mot de passe : "
  pass = String(gets.chomp)

  if pass == $password
    success_login
  else
    puts "Mot de passe erroné! Veuillez le ressaisir !"
    login
  end
end

def success_login
  puts "Bienvenue dans le mode merveilleux de l'acide récréatif !"
end

def welcome_screen
  puts "password: #{$password}"
  puts "Qu'est-ce que Monsieurs souhaite faire ?"
  puts "1 - Sign up"
  puts "2 - Login"

  print "❯ "
  user_choice = Integer(gets.chomp)

  if user_choice == 1
    sign_up
  elsif user_choice == 2
    login
  else
    puts "Si Monsieur veux bien choisir entre le choix 1 et le choix 2 !"
    welcome_screen
  end
end

welcome_screen