module Prct07
     

  Nodo = Struct.new(:valor, :siguiente,:anterior)

  class Lista_doble 
      
      include Enumerable
    #cabeza = head ultelem = ultcola
    
    attr_accessor :head, :ultcola,:valor, 
    
    
    def initialize(n=nil, m=nil)
   	@head=n
	@ultcola=m
    end
    
    
    def each()
        temp=@head
        while (temp != nil) do
        yield temp.valor
        temp=temp.siguiente 
        end
    end
    
    
# def push_principio(esta,nuevo)
#     if @head == nil 
#     	@head=nuevo
#         elsif esta==nil 
# 	    nuevo.siguiente = @head
# 	    @head.anterior = nuevo
# 	    #suponemos que nuevo anterio ya es nulo
#     else
# 	aux=@head
# 	while aux.valor =! esta.valor 
# 	 aux.siguiente = aux
# 	end  
# 	 #aux2=@head
# 	 aux2=aux.anterior
# 	 aux.anterior=nuevo.siguiente
# 	 aux2.siguiente=nuevo
# 	 nuevo.siguiente=aux
# 	 nuevo.anterior=aux2
#      end
# end


    def push_principio(args)
#       if @head == nil 
# 	@head=args
#       else
# 	args.siguiente = @head
# 	#@head.anterior = args
# 	#@head = args
# 	args.anterior = nil
# 	#puts "push_p"
#       end
    end 
   
   
    
    
    
   def push_final(args)
       if @head == nil
	 @head = args
       else
	  @head.siguiente = args
	  args.anterior = @head
	  @head = args
       end
   end
    
    
    def pop_principio()
      if @head != nil
	elimina = @head
	#@head = @head.siguiente  
	@head.anterior = nil
	elimina.siguiente = nil
	elimina.valor
	#puts "pop"
      else
	puts 'No habia nada en la lista enlazada'
	return nil
      end
    end
   
    
    
    def pop_final()
      if (@ultcola!= nil)#si la lista tiene mas de un elemento
	    aux = @ultcola
	    @ultocola = @ultcola.anterior
	    @ultocola.siguiente = nil
	    aux.anterior = nil
	    aux.valor
	  else
	     puts 'No habia nada en la lista enlazada'
         return nil
	  end
    end
   
 
    
  end
        
end
