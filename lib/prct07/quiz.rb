module Prct07
    

class Question
    attr_accessor :text, :answer

    def initialize (text, answer)
        @text = text
        @answer = answer
    end
    
    def to_s
        aux = " "
        aux << text << "\n"
        i = 1
        aux << "\t#{i}- #{answer[:right]}\n"
        answer[:wrong].each do |op|
            aux<<"\t#{i+=1}- #{op}\n"
        end
        aux
    end
    
end



class Quiz
  attr_accessor :title, :arquestions



  def initialize(title, &block)
    self.title = title
    self.arquestions = []
    instance_eval &block 
  end
 
  def question(text, options = {})
    question = Question.new(text,options)
    arquestions << question
  end
  
  def wrong (option)
    self.arquestions[-1].answer[:wrong] << option
  end
  
  def run
    temp = title
    temp << "\n"
    arquestions.each_with_index do |question, index|
      temp << "#{index+ 1})#{question}\n"
    end
    temp
  end

end

quiz = Quiz.new("Cuestionario de LPP 11/12/14") {
    question '!Cuantos argumentos de tipo bloque puede recibir un metodo?',
        :right => '1',
        :wrong => []
    	wrong '2'
    	wrong 'muchos'
    	wrong 'los que defina el usuario'
        
    question '!En Ruby los bloque son objetos que continen codigo?',
        :right=>'Falso',
        :wrong => []
    	wrong 'Cierto'
    question  "salida de :  class Objeto \n     end",
		:right => "Una instancia de la clase Class",
		:wrong => []
		wrong  'una constante'
		wrong  'un objeto'
		wrong 'ninguna de las anteriores'
}

puts quiz.run

end