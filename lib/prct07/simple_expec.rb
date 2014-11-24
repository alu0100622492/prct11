require 'pry'

module Prct07 
	class SimpleExpec < Prct07::Preg
		attr_accessor :verd, :distractor
	 def initialize(args)
		super(args[:text])
		@verd = args[:verd]
		raise ArgumentError, 'Specify :right' unless @verd
		@distractor = args[:distractor]
		raise ArgumentError, 'Specify :distractor' unless @distractor
	 end
	 def to_html
		options = @distractor+[@verd]
		options = options.sample       # Metodo que baraja un array
		options = ''
		options.each do |options|
		options +=  %Q{<input type = "radio" value= "#{options}" name = 0 > #{options}\n}
		html = %Q{
		{#{@text}}<br/>
		{#{options}}
		}
		end
	 end
	 def to_s
	     "#{@text}#{@verd}#{@distractor}"
	 end
	 
	 def <= (other)
	 	distractor.size <= other.distractor.size
	 end
	
	 def >= (other)
	 	distractor.size >= other.distractor.size
	 end
	end
end
