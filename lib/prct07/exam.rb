module Prct07
    class Exam
        ##La clase examen tiene una lista hecha en el spec y las respuetas correctas que guarda el user
        
       attr_accessor :lista_enlazada, :seleccion
      
   #Nodo = Struct.new(:valor, :antes,:siguiente )
     
      def initialize(lista)
        @lista_enlazada=lista
        @seleccion=[]
      end
    end
end    








# 	    @lista_enlazada=Prct07::Lista_doble.new
        
#         @preg1=Prct07::SimpleExpec.new(
# 				      :text => "salida de :  class Objeto \n     end",
# 				      :right => "Una instancia de la clase Class",
# 				      :distractor => ['una constante', 'un objeto', 'ninguna de las anteriores'])
				
	    
	        
	        
# 	    @preg2=Prct07::VerdFals.new(
#  				      :text => "Es apropiado que una clase tablero herede de la clase juego? ",
#  				      :verd => "Falso", 
#  				      :fals => ['Cierto'])
 				
 		
 			

#  		@preg3=Prct07::SimpleExpec.new(
#  					:text => "salida de : 
#  					class Xyz \n def pots\n
#  					@nice\n end\nend\n",
#  					:right => 'nil',
#  				 	:distractor => ['#<Xyz:0x00000002bf0ed0>',0, "ninguna de las anteriores" ])
 
 
 			
 				
#  		@preg4=Prct07::VerdFals.new(
#  				      :text => "salida de :
#  				      hash_raro ={ \n
#  				      [1, 2, 3] => Object.new(), \n
#  				      Hash.new => :toto
#  				      }", :verd => "Cierto", 
#  				      :fals => "Falso" )
 				
#  	@nodo1=Nodo.new(@preg1, nil,nil)
#  	@nodo2=Nodo.new(@preg2, nil,nil)
# 	@nodo3=Nodo.new(@preg3, nil,nil)
#  	@nodo4=Nodo.new(@preg4, nil,nil)
# 	@lista_enlazada.push_principio(@nodo1)
#  	@lista_enlazada.push_principio(@nodo2)					
#   	@lista_enlazada.push_principio(@nodo3)
# 	@lista_enlazada.push_principio(@nodo4)
	
#     end
      
#     def pop()
# 	  puntuacion =@lista_enlazada.pop_principio()
#     end


#     @interf = Prct07::Inter_user.new(@lista_enlazada)
#     @interf.mostrar
    
    
