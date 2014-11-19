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
  	      @lista_doble.push_principio(@nodo6)
  	      @lista_doble.pop_principio()
  	       end 
  	 end   

     
     context "Pruebas de la clase SimpleExpec con Comparable \n" do
             it "Pertenece la pregunta a la clase SimpleExpec" do
                 expect(@preg1.class) ==  Prct07::SimpleExpec
             end
	         
	         
	         it "Comprueba que la pregunta preg1 tenga mas opciones erroneas que la pregunta preg3" do
		         expect(@preg1 <= @preg3).to eq(true)
	         end
	    
	         it "Comprueba que la pregunta preg1 tenga las mismas opciones erroneas que la pregunta preg5" do
		        expect(@preg1 == @preg5).to eq(false)
	         end
	    
	         it "Comprueba que la pregunta preg3 tenga menos opciones que la pregunta preg5" do
		        expect(@preg3 >= @preg5).to eq(true)
	         end

    end
    
   
   
   
    
    context "Pruebas para la clase VerdFals con Comparable\n" do
        
        it "Pertenece la pregunta a la clase VerdFals" do
                expect(@preg2.class) == Prct07::VerdFals
        end
            
	    it "Debe tener una respuesta correcta" do
               expect(@preg2.verd) == ['Cierto']	       
	    end
	    
        it "Debe tener unas opciones incorrectas" do
               expect(@preg2.fals) == 'Falso'	       
	    end
	    
	    it "Debe tener un metodo to_s" do
               expect(@preg2).to respond_to :to_s       
	    end
	    
	    it "Comprueba que la pregunta preg2 tenga menos opciones correctas que la pregunta preg6" do
		expect(@preg2 <= @preg6).to eq(true)
	    end
	    
	    it "Comprueba que la pregunta preg2 tenga las mismas opciones correctas que la pregunta preg4" do
		expect(@preg2 == @preg4).to eq(false)
	    end
	    
	    it "Comprueba que la pregunta preg2 tenga mas opciones correctas que la pregunta preg6" do
		expect(@preg6 >= @preg2).to eq(true)
	    end
    end
    






    context "Pruebas para la clase Lista_doble con Enumerable \n" do
	    
	    it "Es de la clase Lista_doble" do
                 expect(@nodo1.class) == Prct07::Lista_doble      
	    end
	    
	    it "Existe un Nodo de la lista con sus datos, su siguiente y su anterior" do
	         expect(@lista_doble.head != nil && @lista_doble.siguiente == nil && @lista_doble.anterior == nil) 
	    end
	       
	    it "Insertar nodos en la lista" do
            @lista_doble.push_principio(@nodo1)
            expect(@lista_doble.head) == (@nodo1)
        end
                
        it "Insertar varios elementos por el principio" do
            @lista_doble.push_principio(@nodo1)
            @lista_doble.push_principio(@nodo2)
            expect(@lista_doble.head) == (@nodo2)
        end
		
		it "Insertar varios elementos por el final" do
            @lista_doble.push_final(@nodo1)
            @lista_doble.push_final(@nodo2)
            expect(@lista_doble.ultcola) == (@nodo1)
        end

	    it "Extraer el primer elemento de la lista" do
		    @lista_doble.push_principio(@nodo1)
            @lista_doble.push_principio(@nodo2)
            @lista_doble.pop_principio()
            expect(@lista_doble.head) == (@nodo2)	
	    end
		
		it "Extrar el ultimo elemento de la lista" do
		    @lista_doble.push_final(@nodo1)
            @lista_doble.push_final(@nodo2)
            @lista_doble.pop_final
            expect(@lista_doble.ultcola) == (@nodo2)	
	    end
		
		it "Insertar por el final de la lista" do
		    @lista_doble.push_final(@nodo1)
            @lista_doble.push_final(@nodo2)
            expect(@lista_doble.ultcola) == (@nodo2)	
	    end
		
		it "Metodo each con el metodo Enumerable" do
		    @lista_doble.each{|i| i}
		end
		
		it "Metodo count con el metodo Enumerable" do
		  expect( @lista_doble.count).to eq(0)
		end
		
		it "Metodo all con el metodo Enumerable" do
		    expect(@lista_doble.all?).to eq(true)
		end
		
		it "Metodo max con el metodo Enumerable" do
		    expect(@lista_doble.max).to eq(nil)
		end
		
	end



end