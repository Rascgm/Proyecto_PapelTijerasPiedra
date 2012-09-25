#papeltijeraspiedra.rb

jugadas = [ :piedra, :papel, :tijeras]

comp = jugadas.sample

puts comp

jugador = ARGV.shift || jugadas.sample

puts jugador

if comp == jugador
	
	puts "> Empate; ambos sacaron #{comp}"
	
	else
		
		g_com = true
		g_play = true
		
		case
			
			when jugador == :piedra then g_play = false if comp == :papel 
			when jugador == :papel then g_play = false if comp == :tijeras  
			when jugador == :tijeras then g_play = false if comp == :piedra
			
		end
		
		text = 'Jugador'
		
		text = 'PC' if g_com == true 
		
		puts "> Gana el #{text}"
		
		
		
	end
