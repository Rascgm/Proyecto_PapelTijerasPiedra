#papeltijeraspiedra.rb

jugadas = [ :piedra, :papel, :tijeras]

comp = jugadas.sample

puts comp

jugador = ARGV.shift || jugadas.sample

puts jugador