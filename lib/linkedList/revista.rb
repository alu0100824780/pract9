
module Bibliografia
	class Revista < Bibliografia
		attr_reader :ISSN

		def initialize
		     @ISSN = []
		end

		def add_ISSN(num)
		     @ISSN << num
		end
	end
end
