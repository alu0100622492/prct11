module Prct07
     

  Nodo = Struct.new(:valor, :siguiente,:anterior)

  class Lista_doble 
      
      include Enumerable
    #cabeza = head ultelem = ultcola
    
    attr_accessor :head, :ultcola,:valor, :siguiente, :anterior
    
    
    def initialize(n=nil, m=nil)
   	@head=n
	@ultcola=m
    end
    
    
    def each()
        temp=@head
        while temp != nil
        yield temp.valor
        temp=temp.siguiente 
        end
    end
    
    def push_principio(args)
      if @head== nil 
	head=args
      else
	args.siguiente = head
	head = args
      end
    end 
   
   
    def push_final(args)
        if @ultcola== nil
            ultcola=args
        else
            args.anterior = ultcola
            ultcola=args
        end
    end
    
    
    def insertar_mitad_delante(nodoe,nodon)
        temp=@head
        while temp != nodoe
        temp.siguiente
        end
        temp=head.anterior
        head.anterior=nodon.siguiente
        temp.siguiente=nodon
        nodon.siguiente=head
        nodon.anterior=temp
    end
    
    
    def insertar_mitad_detras(nodoe,nodon)
        temp=@ultcola
        while temp  != nodoe
        temp.anterior
        end
        temp=ultcola.siguiente
        ultcola.siguiente=nodon
        nodon.siguiente=temp
        temp.anterior=nodon
        nodon.anterior=ultcola
    
    end
    
    def pop_principio()
      if @head!=nil
	elimina = head
	head = head.siguiente  
	elimina.valor
      else
	puts 'No habia nada en la lista enlazada'
	return nil
      end
    end
   
   
   
    def pop_final()
        if @ultcola!= nil
            elimina = ultcola
            ultcola = ultcola.anterior
            elimina.valor
        else
            puts 'No habia nada en la lista enlazada'
            return nil
        end
    end
 
    def pop_medio(nodo)
    temp=@head
    while temp !=nodo
        temp.siguiente
    end
    temp1=nodo.anterior
    temp2=nodo.siguiente
    temp1.siguiente=temp2
    temp2.anterior=temp1
    elimina=nodo.valor
  
    end
  end
        
end
