require 'date'

module Bibliografia
    class Bibliografia

	include Comparable

	def <=> (other)
             return nil unless !other.is_a? Bibliografia::Bibliografia
             aux = @Author <=> other.Author
	     if( aux == 0)
		aux = @Fecha_Publication <=> other.Fecha_Publication
	     end
             aux
	end


        attr_reader :Author, :Title, :Serie, :Editorial, :Edicion
        attr_reader :Fecha_Publication
        def initialize
            @Author = ["Sin autores"]
            @Title = "Sin titulo"
            @Serie = nil
            @Editorial = "Editorial sin definir"
            @Edicion = 0
            @Fecha_Publication = Date.new(1990,1,1)
        end

        def add_author(name)
            if(@Author[0] == "Sin autores")
                @Author[0] = name
            else
                @Author << name
            end
        end

        def set_title(name)
            @Title = name
        end

        def set_serie(name)
            @Serie = name
        end

        def set_editorial(name)
            @Editorial = name
        end

        def set_edition(num)
            @Edicion = num
        end

        def set_publication(d,m,a)
            @Fecha_Publication = Date.new(a,m,d)
        end


        def get_formato
            a = @Author.join(", ") +"\n"+@Title.to_s+"\n"+@Serie.to_s+
            "; "+@Edicion.to_s+" edition ("+@Fecha_Publication.to_s+")\n"
            for i in 0..@ISBN.size-1 do
                a += @ISBN[i] + "\n"
            end
	    a += "\n\n"
            a
        end
   end
end
