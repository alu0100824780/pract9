
class Bibliografia
        attr_reader :Author, :Title, :Serie, :Editorial, :Edicion
        attr_reader :Fecha_Publication, :ISBN
        def initialize 
            @Author = ["Sin autores"]   
            @Title = "Sin titulo"
            @Serie = nil
            @Editorial = "Editorial sin definir"
            @Edicion = 0
            @Fecha_Publication = "01-ENE-1901"
            @ISBN = []
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
        
        def set_publication(fech)
            @Fecha_Publication = fech
        end
        
        def add_ISBN(num)
            @ISBN << num
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
