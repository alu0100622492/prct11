#===Class Lista_doble
#*def initialize, def each, def reverse_lista
#def pop_principio, def push_principio


module Prct07



  Nodo = Struct.new(:valor, :siguiente,:anterior)

  class Lista_doble 
      
      include Enumerable
    #cabeza = head ultelem = ultcola
    
    attr_accessor :head, :ultcola,:valor,:lista1
    
    
    
    def initialize
   	@head= nil
	@ultcola=nil
	#@lista_reverse = nil
    end
          
          
#   def reverse_lista(lista)
#         @listareves=Prct07::Lista_doble.new
#         @lista.reverse_each do |n|
#             @listareves.push_principio(n)
#         end
#         return @listareves
#     end
    def reverse_lista
	  @lista_reverse = Prct07::Lista_doble.new
	  self.each_with_index do |n|
	       @lista_reverse.push_principio(n)
	       puts"hola"
	      end
	  return @lista_reverse
    end    
    
# def reverse_lista(lista)
#       @listareves=Prct07::Lista_doble.new
#     return Proc.new{ |n| listareves.push_principio(n) }
#     reverse_lista
# end
    
    
    
    def reverse_lista
	  @lista_reverse = Prct07::Lista_doble.new
	  self.each_with_index do |n|
	       @lista_reverse.push_principio(n)
	       puts"reverse"
	      end
	  return @lista_reverse
    end

    
    
    def each()
        if(@head !=nil)
           @temp=@head
             while (@temp != nil) do
             yield @temp.valor
             @temp=@temp.siguiente 
             end
        end
    end
  
  
  
    def pop_principio()
      if @head != nil
	        @elimina = @head
	        @head = @head.siguiente  
	        #@head.anterior = nil
	        @elimina.siguiente = nil
	        @elimina.valor
	        #puts "pop"
      else
	        puts 'No habia nada en la lista enlazada'
	        return nil
      end
    end   
    
    def push_principio(args)
      if @head == nil 
	     @temp=Nodo.new(args,nil,nil)
         @head=@temp
      else
          @temp=Nodo.new(args,nil,nil)
	      @head.anterior=@temp
	      @temp.siguiente = @head
          @head=@temp
	      #@head.anterior = args
	      #@head = args
	      #args.anterior = nil
	      #puts "push_p"
      end
    end 
    
    
    


    
    
    # @lista1=Prct07::Lista_doble.new
    # puts"aaaaq!"
    # @lista1.push_principio(@preg1)
    # @lista1.push_principio(@preg2)
    # @lista1.reverse_lista
        
    
    
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


    
   
#   def push_principio(args)
#       if (@head == nil)
#           @head=args
#           @ultcola = args
#       else
#           args.siguiente=@head
#           #@head.anterior=args
#           @head = args
#       end
#   end
   
    
    
    
#   def push_final(args)
#       if @head == nil
# 	 @head = args
#       else
# 	  @head.siguiente = args
# 	  args.anterior = @head
# 	  @head = args
#       end
#   end
    
   
    
    
#     def pop_final()
#       if (@ultcola!= nil)#si la lista tiene mas de un elemento
# 	    aux = @ultcola
# 	    @ultocola = @ultcola.anterior
# 	    @ultocola.siguiente = nil
# 	    aux.anterior = nil
# 	    aux.valor
# 	  else
# 	     puts 'No habia nada en la lista enlazada'
#          return nil
# 	  end
#     end
   
 
