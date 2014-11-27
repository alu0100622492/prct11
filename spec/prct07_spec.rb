require 'spec_helper'
require 'prct07'
#Crear it para saber de que clase son las pruebas
#introducir todas las preguntas hechas practica anterior
#describe Prct07 do
describe Prct07::Lista_doble do
  before :each do
		
			@lista_doble = Prct07::Lista_doble.new
             
         	@preg1=Prct07::SimpleExpec.new(
				      :text => "salida de :  class Objeto \n     end",
				      :verd => "Una instancia de la clase Class",
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
 					:verd => 'nil',
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
 				      :verd => "Ninguna de las anteriores",
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
		
		#it "Insertar varios elementos por el final" do
  		#@lista_doble.push_final(@nodo1)
  		#@lista_doble.push_final(@nodo2)
  		#expect(@lista_doble.ultcola) == (@nodo1)
  		#end

	    it "Extraer el primer elemento de la lista" do
		    @lista_doble.push_principio(@nodo1)
            @lista_doble.push_principio(@nodo2)
            @lista_doble.pop_principio()
            expect(@lista_doble.head) == (@nodo2)	
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

describe Prct07::Exam do
describe Prct07::Inter_user do
describe Prct07::Lista_doble do
    
    before :each do	
  	@list= Prct07::Lista_doble.new
   
			@preg1=Prct07::SimpleExpec.new(
				      :text => "salida de :  class Objeto \n     end",
				      :verd => "Una instancia de la clase Class",
				      :distractor => ['una constante', 'un objeto', 'ninguna de las anteriores'])
				
	        @preg2=Prct07::VerdFals.new(
 				      :text => "Es apropiado que una clase tablero herede de la clase juego? ",
 				      :verd => "Falso", 
 				      :fals => ['Cierto'])
 				
 			
 		    @preg3=Prct07::SimpleExpec.new(
 					:text => "salida de : 
 					class Xyz \n def pots\n
 					@nice\n end\nend\n",
 					:verd => 'nil',
 				 	:distractor => ['#<Xyz:0x00000002bf0ed0>',0, "ninguna de las anteriores" ])
 
 				
 			@preg4=Prct07::VerdFals.new(
 				      :text => "salida de :
 				      hash_raro ={ \n
 				      [1, 2, 3] => Object.new(), \n
 				      Hash.new => :toto
 				      }", 
 				      :verd => "Cierto", 
 				      :fals => "Falso" )
 				      
 				      
 				@list.push_principio(@preg1)
 				@list.push_principio(@preg2)
 				@list.push_principio(@preg3)
 				@list.push_principio(@preg4)
		
			
			@examen = Prct07::Exam.new(@list)
			
			
			
			@interfaz= Prct07::Inter_user.new(@list)
			@interfaz.examen.seleccion_presentados = ["Cierto", 'nil', "Falso","Una instancia de la clase Class"]

	end
    
    context "Pruebas de la clase examen e interfaz de usuario" do
	      it "Existe una clase examen" do
		expect(@examen.class).to eq Prct07::Exam
	      end
	      
	      it "La clase examen tiene una lista de preguntas" do
		expect(@examen.lista_enlazada.class).to eq Prct07::Lista_doble
	      end
	      
	      it "La clase interfaz tiene un atributo de la clase examen" do
		expect(@interfaz.examen.class) == Prct07::Exam
	      end
	      
	      it "El examen tiene un atributo de tipo Lista doble" do
		expect(@interfaz.examen.lista_enlazada.class) == Prct07::Lista_doble
	      end
		       
	      
	      #nota =10
	      it "La clase examen te dice si estas aprobado o suspendido" do
		@interfaz.mostrar(["Cierto", 'nil', "Falso","Una instancia de la clase Class"])
		expect(@interfaz.puntuacion)== (true)
	      end
	      #nota 7.5
	      it "La clase examen te dice si estas aprobado o suspendido" do
		@interfaz.mostrar(["Cierto",'nil',"Cierto","Una instancia de la clase Class"])
		expect(@interfaz.puntuacion)== (true)
	      end
	      #nota5
	      it "La clase examen te dice si estas aprobado o suspendido" do
		@interfaz.mostrar(['nil',"Cierto", "Falso","Una instancia de la clase Class"])
		expect(@interfaz.puntuacion)== (true)
	      end
	      #nota2.5
	      it "La clase examen te dice si estas aprobado o suspendido" do
		@interfaz.mostrar(["Falso", 'nil', "Cierto",'Una constante'])
		expect(@interfaz.puntuacion)== (true)
	      end
	      #nota = 0	
	      it "La clase examen te dice si estas aprobado o suspendido" do
		@interfaz.examen.seleccion_presentados = ["Verdadero","Una instancia de la clase Class", "Ninguna de las anteriores", "Cierto"]
		@interfaz.mostrar(@interfaz.examen.seleccion_presentados)
		expect(@interfaz.puntuacion)== (true)
	      end
  
	
	    it "Pertenece a la clase lista_enlazada " do
	      expect(@examen.class.ancestors) == Kernel
	    end
	    it "Donde pertenece" do
	      expect(@examen.class.superclass) == Object
	    end  
	    
	end
	
	context "Pruebas de funcion funcional reverse" do
		it "Comprobamos si el metodo reverse funciona" do
			
		@listaprueba = Prct07::Lista_doble.new
		# @listaprueba.push_principio(@preg4)
		# @listaprueba.push_principio(@preg3)
		@listaprueba.push_principio(@preg1)
		@listaprueba.push_principio(@preg1)
			
	
		@a = Prct07::Lista_doble.new
		@a.push_principio(@preg1)
		@a.push_principio(@preg1)
		# @a.push_principio(@preg3)
	    # @a.push_principio(@preg4)
	    @a.reverse_lista
	    	
	    #expect(@listaprueba.pop_principio()).to eq (@pepe.pop_principio())
	    expect(@listaprueba.head.valor).to eq (@a.head.valor)
	    expect(@listaprueba.head.valor).to eq (@a.head.valor)
		
		
	#	expect(@listaprueba.pop_principio()).to eq(@listaprueba.pop_principio())
 	#	expect(@listaprueba.pop_principio()).to eq (@a.pop_principio())
 	#	expect(@listaprueba.pop_principio()).to eq (@a.pop_principio())
 	#	expect(@listaprueba.pop_principio()).to eq (@a.pop_principio())
 	#	expect(@listaprueba.pop_principio()).to eq (@a.pop_principio())
 	#	expect(@listaprueba.pop_principio()).to eq (@a.pop_principio())
	     
	      end
    end
end    
end   
end

#     context "Pruebas para la clase Inter_user  \n" do
	    
	#     it "Examen ancestor" do
 #                expect(@insta.class.ancestors) == Kernel     
	#     end
	#     it "Interfaz users" do
	#     	@lista_enlazada=Prct07::Lista_doble.new()
	    	
	#      	@lista_enlazada.push_principio(@nodo1)
	# 	    @lista_enlazada.push_principio(@nodo2)
 #           @lista_enlazada.push_principio(@nodo3)
 #           #@lista_enlazada.pop_final()
 #           @Inter_user=Prct07::Inter_user.new(1)
 #           #@Inter_user.mostrar()
	#     end
		
	# end

 # before :each do	
 # 	@instance = Prct07::Exam.new()
 #  end
	#     context "Pruebas para la clase Exam  \n" do
	    
	#     it "Examen ancestor" do
 #                expect(@instance.class.ancestors) == Kernel     
	#     end
		
	# end

   