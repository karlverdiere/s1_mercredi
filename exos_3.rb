
	puts "choisi ton mot de pass"
	print ">"
	def define_password
	@user_password = gets.chomp

	end
	define_password
	puts "ton mdp stp"
	print ">"
	def password_verification
	@user_verif = gets.chomp
	if @user_verif == @user_password 
		puts "you are onligne"
		elsif(@user_verif != @user_password)
		puts " you not a connected"
	end
	end
	password_verification()


