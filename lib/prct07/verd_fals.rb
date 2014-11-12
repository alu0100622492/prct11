module Prct07 
    class VerdFals < Preg
        		attr_accessor :text,:verd, :fals
	 def initialize(args)
	    super(args[:text])
		@verd = args[:verd]
		@fals = args[:fals]
	 end
	 def to_s
	     "#{@text}#{@verd}#{@fals}"
	 end
	 def <=>(other)
	 	verd.size <=> other.verd.size
	 end
    end
     

end
