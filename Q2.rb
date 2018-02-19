#!/usr/bin/env ruby


def chiffre_de_cesar(chaine, decallage)

#Initialisation
	$retour = ""
	#Boucle : pour chaque "char"(caractère) de la chaine passée en paramétre
	# c => char
	chaine.each_byte do |c|

	#si le caractère est compris entre a et z ou entre A et Z
	if ((c >= 97 and c <= 122) or (c >= 65 and c <= 90))
	
	# si on est au dela de z
		if (c+decallage > 122)
			c=(c+decallage -122)+97 +1
			#sinon si on est au dela de Z
		elsif (c+decallage > 90 and c < 97)
			c=(c+decallage -90)+65 +1
		else
		#sinon, on affiche le caractère tel quel (avec le décallage)
			c=c+decallage
		end		
		
		$retour<< c.chr
	#si le caractère N'est PAS compris entre a et z ou entre A et Z  (espace, accents, ponctuation...)
	else
		$retour << c.chr
	end
end
#on affiche la chaine de retour
puts $retour
end
 
#TEST 1
chiffre_de_cesar("What a string!", 5)


 
 


