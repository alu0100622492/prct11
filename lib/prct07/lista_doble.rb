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
    
    def push_principio(args)
      if @head == nil 
	@head=args
      else
	args.siguiente = @head
	@head.anterior = args
	@head = args
	args.anterior = nil
      end
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
	@head = @head.siguiente  
	@head.anterior = nil
	elimina.siguiente = nil
	elimina.valor
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
