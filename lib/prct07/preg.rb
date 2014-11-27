module Prct07
  
  class Preg
    include Comparable

    attr_accessor :text

    def initialize(args) 
      @text= args
    end
    def <=>(other)
      
    end
  end
end
