module Prct07 
    class VerdFals < Preg
        		attr_accessor :verd, :fals
	 def initialize(args)
	    super(args[:text])
		@verd = args[:verd]
		raise ArgumentError, 'Specify :verd' unless @verd
		@fals = args[:fals]
		raise ArgumentError, 'Specify :fals' unless @fals
	 end
	 def to_s
	     "#{@text}#{@verd}#{@fals}"
	 end
	 def <=>(other)
	 	verd.size <=> other.verd.size
	 end
    end
     

end
