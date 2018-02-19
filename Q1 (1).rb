#!/usr/bin/env ruby

$somme = 0

##on boucle sur les 1000 nombres entiers
for i in 1..1000
##si le nombre est multiple de 1 ou de 5, on l'additionne avec les autres trouvé*/
	if i%3 == 0 || i%5 == 0
		$somme+= i	
	end	
end
##on affiche
puts "#{$somme}"
