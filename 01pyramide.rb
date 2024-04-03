def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    print "> "
    nombre_etages = gets.chomp.to_i
    
    # Vérifier si le nombre d'étages est impair
    until nombre_etages.odd?
      puts "Choisissez un nombre impair !"
      print "> "
      nombre_etages = gets.chomp.to_i
    end
  
    puts "Voici la pyramide :"
  
    # Partie supérieure de la pyramide
    (1..nombre_etages).step(2) do |i|
      print " " * ((nombre_etages - i) / 2)
      puts "#" * i
    end
  
    # Partie inférieure de la pyramide
    (nombre_etages - 2).step(1, -2) do |i|
      print " " * ((nombre_etages - i) / 2)
      puts "#" * i
    end
  end
  
  wtf_pyramid
  