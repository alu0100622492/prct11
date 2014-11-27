module Prct07
  class Inter_user
        #en el spec cargar el examen y mostrar el examen al usuario y en la clase hago el metodo mostrar, debe recogerse las opcione dl usuario, l paso una lista d respuestas correctas al spec y 
        #y hago las expectativas comparando
        attr_accessor :examen, :acertadas, :desacertadas
  
    def initialize(lista_doble)
      #@examen=interf
      #@examen
      #@examen=lista_doble
      @examen = Prct07::Exam.new(lista_doble)
      @acertadas = 0
      @desacertadas = 0
    end 
    
    
    #args son mis respuestas
    def mostrar(args)
        aux = @examen.lista_enlazada.head
	    cont = 0
	    while (aux != nil)
		aux.valor.to_s
		if (args[cont] == aux.valor.verd) 
		    @acertadas = @acertadas+2.5
		else
		    @desacertadas=@desacertadas+2.5
		end
		aux= aux.siguiente
		cont = cont +1
	    end
	    if (@acertadas !=0 || @desacertadas !=0)
		return true
	    else
		return false
	    end
    @acertadas=0
    @desacertadas=0
    
        
    end
    
 
 
    def puntuacion()
      puts "\nSu nota es #{@acertadas}\n"
	  if (@acertadas>= @desacertadas)
	      puts "El examen ha sido pasado con exito"
	      return true
	  else
	      puts "El examen ha sido suspendido. Mas suerte la proxima vez"
	      return false
	  end
    end
  end 
end
    
#     def mostrar()
        
#     puts " Examen de LPP \n"
#     puts " Introduzca el Nombre y los Apellidos: "
#     STDOUT.flush
#     @datos_user = gets.chomp 
     
#     puts "\n"
#     puts "Tendra un examen de 4 preguntas donde elegira una opcion entre las distintas opciones
#     de las preguntas. Cada preguntas puntuaran con 2.5 puntos.\n"
    
#     aux = @examen.lista_enlazada
#     #aux = @examen
#     while aux != nil
	
# 	sacalista = aux.pop_fina()
# 	puts "#{sacalista.to_s}"
     
# 	puts "Cual es su respuesta? "
# 	STDOUT.flush
# 	respuesta[] = gets.chomp
# 	if sacalista.right(respuesta) || sacalista.verd(respuesta)
# 	 puts "La respuesta es correcta"
# 	  nota+=2.5
# 	 else
# 	  puts "La respuesta es incorrecta"
# 	 end
#     end
#     end
    
        
#@examen.mostrar()
        

