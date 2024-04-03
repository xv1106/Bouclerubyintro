def signup
    puts "Welcome to the sign up screen, select your password !"
    print ">"
    created_password = gets.chomp
    puts "Password created!"
    return created_password
  end
  
  def login(created_password)
    puts "You can now login, what's your password?"
    print ">"
    entered_password = gets.chomp
    return entered_password
  end
  
  def welcome(entered_password, created_password)
    if entered_password == created_password
      puts "Welcome to the home screen, you now have access to your friends WhatsApp group"
    else
      puts "Password incorrect"
    end
  end
  
  def perform
    created_password = signup
    entered_password = login(created_password) # Capture the returned value
    welcome(entered_password, created_password) # Pass it to welcome method
  end
  
  perform
  