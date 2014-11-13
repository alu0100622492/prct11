module Prct07
  
  include Comparable
  class Preg

    attr_accessor :text

    def initialize(args) 
      @text= args
    end
    def <=>(other)
    end
  end
end
