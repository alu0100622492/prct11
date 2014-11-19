module Prct07
    class Inter_user
        
        attr_accessor :examen, :nota, :datos_user
  
    def initialize()
      @examen=Prct07::Exam.new
      @nota = 0
    end 
    
    def mostrar
      puts " Examen de LPP \n"
      puts " Introduzca el Nombre y los Apellidos: "
      STDOUT.flush
      @datos_user = gets.chomp 
      
      puts "\n"
      puts "Tendra un examen de 4 preguntas donde elegira una opcion entre las distintas opciones
      de las preguntas. Cada preguntas puntuaran con 2.5 puntos.\n"
      
      aux = @examen.lista_enlazada
      while !aux.empty()
	
	sacalista = aux.pop()
	puts "#{sacalista.to_s}"
     
	puts "Cual es su respuesta? "
	STDOUT.flush
	respuesta = gets.chomp
	if sacalista.right(respuesta) || sacalista.verd(respuesta)
	 puts "La respuesta es correcta"
	  nota+=2
	else
	  puts "La respuesta es incorrecta"
	end
      end
    end
    
    def puntuacion
      puts "el Usuario: #{@datos_user} ha finalizado el examen \n"
      puts "Su nota es #{nota}\n"
      if nota>=5
	puts "El examen ha sido pasado con exito"
      else
	puts "Ha suspendido. Intentelo proximamente"
      end
      
    end
        
    end
end
