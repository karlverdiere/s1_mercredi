puts "voici le jeu de la piramide de mario le but et d'arriver a 10"
puts "Si la personne fait 5 ou 6, elle avance d'une marche et le programme le dit (ainsi que la case où la personne se trouve)"
puts "Si la personne fait 1, elle descend d'une case et le programme le dit (ainsi que la case où la personne se trouve)"
puts "Si la personne fait 2, 3, ou 4 rien ne se passe, et le programme le dit"

def pyramide
number = 10
i = 1
e = 1
j = number
puts "voici donc cette fameuse pyramide:"
	while j >= 1
		j.times {print " "}
		i.times {print "#"}
		e.times  {print "*"}
		puts "\n"
		i = i + 2
		j = j - 1
	end
end
pyramide



def  resultat
	 array = [  1, 2, 3, 4, 5, 6 ]
	 puts "\nAppuyez sur entrer pour lancer le dé"
	  gets.chomp
	  array.shuffle!
	  pyramide()
	  math_result = array[0]
	 puts"resultat du dé: #{math_result} "
	 calcul(math_result)
	 puts "votre marche joueur 1: #{@level_user}"
end

	def resultat2
	array = [ 6, 5, 4, 3, 2, 1 ]
	 puts "\nappuyez sur entrer pour lancer le dé"
	 gets.chomp
	 array.shuffle!
	 math2_result = array[0]
	 puts "resultat du dé : #{math2_result}"
	 calcull(math2_result)
	 puts "votre marche joueur 2: #{@level_user2}"
	end

def calcul (math)
	 if math == 1
    	@level_user -= 1
	 elsif math == 5 || math == 6
		@level_user += 1

	 end

  if @level_user == 10 
	 @stop_the_game = true
	puts "Vous êtes arrivé au bout de cette piramide bien joué"
  elsif  @level_user == -1 
	@level_user = 0

  end

end

def calcull (math2)
	 if math2 == 1
		@level_user2 -= 1
	 elsif math2 == 5 || math2 == 6
		@level_user2 += 1

	 end

  if  @level_user2 == 10
	 @stop_the_game = true
	puts "Vous êtes arrivé au bout de cette piramide bien joué"
  elsif   @level_user2 == -1
	@level_user2 = 0
  end
end

def booleen
  @play_again = true
  while @play_again == true
	 @level_user = 0
	 @level_user2 = 0
	@stop_the_game = false

	@var = true

	while !@stop_the_game

		resultat()
		resultat2()
	end
	 puts "Voulez vous rejouer ? Yes or No"
	 play_again = gets.chomp
	if play_again == "Yes" || play_again == "yes" || play_again == "y" 
		@play_again = true
	elsif play_again == "No" || play_again == "no" 
		@play_again = false
	 else
		 puts " bonne journée, a bientot !"
	@play_again = false
	end
  end
end

booleen()
