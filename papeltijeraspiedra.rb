#papeltijeraspiedra.rb

jugadas = [ :piedra, :papel, :tijeras]

comp = jugadas.sample

puts "> PC: #{comp}"

jugador = ARGV.shift

jugador = jugadas.sample if /piedra|papel|tijeras/.match(jugador) == nil

puts "> Jugador: #{jugador}"

def _partida(comp,jugador)

  if comp == jugador
	
	  puts "> Empate; ambos sacaron #{comp}" 	
	
  else
		
	  g_comp = true
	  g_play = true
		
	  case
			
		  when jugador == :piedra then 
		
		        if comp == :papel
			
			        g_play = false
			
		        else
				
			        g_comp = false
				
			  end
			
		  when jugador == :papel then
		
		  if comp == :tijeras
			
			        g_play = false
			
		        else
				
			        g_comp = false
				
			  end
			
		  when jugador == :tijeras then
		
		  if comp == :piedra
			
			        g_play = false
			
		        else
				
			        g_comp = false
				
		          end
			
	  end
		
	  text = 'Jugador'
		
	  text = 'PC' if g_comp == true 
		
  	  puts "> Gana el #{text}"
		
		
		
  end

end

_partida(comp,jugador)