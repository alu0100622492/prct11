require 'spec_helper'
require 'prct07'
#Crear it para saber de que clase son las pruebas
#introducir todas las preguntas hechas practica anterior
#describe Prct07 do

describe Prct07::SimpleExpec do
            before :each do
		
			@lista_doble = Prct07::Lista_doble.new
             
         	@preg1=Prct07::SimpleExpec.new(
				      :text => "salida de :  class Objeto \n     end",
				      :right => "Una instancia de la clase Class",
				      :distractor => ['una constante', 'un objeto', 'ninguna de las anteriores'])
				
	        @nodo1=Prct07::Nodo.new(@preg1, nil,nil)    
            end	

end
    describe Prct07::VerdFals do
        
 				@preg2=Prct07::VerdFals.new(
 				      :text => "Es apropiado que una clase tablero herede de la clase juego? ",
 				      :verd => "Falso", 
 				      :fals => ['Cierto'])
 				
 				@nodo2=Prct07::Nodo.new(@preg2, nil,nil)
    end
 	           
 	           
    describe Prct07::Lista_doble do
         before :each do
		
			@lista_doble = Prct07::Lista_doble.new
             
         	@preg1=Prct07::SimpleExpec.new(
				      :text => "salida de :  class Objeto \n     end",
				      :right => "Una instancia de la clase Class",
				      :distractor => ['una constante', 'un objeto', 'ninguna de las anteriores'])
				
	        @nodo1=Prct07::Nodo.new(@preg1, nil,nil)   
	        
	        
	        @preg2=Prct07::VerdFals.new(
 				      :text => "Es apropiado que una clase tablero herede de la clase juego? ",
 				      :verd => "Falso", 
 				      :fals => ['Cierto'])
 				
 			@nodo2=Prct07::Nodo.new(@preg2, nil,nil)
 			

 		    @preg3=Prct07::SimpleExpec.new(
 					:text => "salida de : 
 					class Xyz \n def pots\n
 					@nice\n end\nend\n",
 					:right => 'nil',
 				 	:distractor => ['#<Xyz:0x00000002bf0ed0>',0, "ninguna de las anteriores" ])
 
 			@nodo3=Prct07::Nodo.new(@preg3, nil,nil)
 			
 				
 			@preg4=Prct07::VerdFals.new(
 				      :text => "salida de :
 				      hash_raro ={ \n
 				      [1, 2, 3] => Object.new(), \n
 				      Hash.new => :toto
 				      }", :verd => "Cierto", 
 				      :fals => "Falso" )
 				
 			@nodo4=Prct07::Nodo.new(@preg4, nil,nil)
 				
 			@preg5=Prct07::SimpleExpec.new(
 				      :text => "salida de :
 				      class Array \n 
 				      def say_hi \n
 				      HEY! 
 				      end
 				      end \n
 				      p[1,, bob].say_hi", 
 				      :right => "Ninguna de las anteriores",
 				      :distractor => ['1', 'bob', 'HEY!'])
 				      
 			@nodo5=Prct07::Nodo.new(@preg5, nil,nil)
 				
 				
 			@preg6=Prct07::VerdFals.new(
 				      :text => "Es apropiado que una clase tablero herede de la clase juego? ",
 				      :verd => "Falso", :fals => ['Cierto'])
 				
 			@nodo6=Prct07::Nodo.new(@preg6, nil,nil)
 				
            end	
  	 context "Creacion de lista;" do
  	     it"Empujamos al principio" do
  	         
  	     @lista_doble.push_principio(@nodo1)
  	     @lista_doble.push_principio(@nodo2)
  	     @lista_doble.push_principio(@nodo3)
  	     @lista_doble.push_principio(@nodo4)
  	     @lista_doble.push_principio(@nodo5)
  	     end 
  	     it"Eliminamos al final" do
  	     @lista_doble.pop_final
  	     end
  	     it "existe un metodo insertar_mitad_delante" do
 		 expect(@lista_doble).to respond_to :insertar_mitad_delante
         end
 	     
     end
    end
