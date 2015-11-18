
module LinkedList

	class List
	      attr_accessor :First, :Last
	      attr_reader :Size
	   def initialize
 	      @Last = @First = nil
              @Size = 0
           end

	   def push_back(v)
              if(@Size == 0)
		  @Last = @First = Node.new(v,nil,nil)
              else
                  @Last.next = Node.new(v,nil,@Last)
		  @Last = @Last.next
              end
              @Size = @Size + 1 
           end


           def at(i)
              aux = @First
              j = 0
              while(j < i) do
		aux = aux.next
                j = j + 1
              end
              aux
           end
        end
  # Your code goes here...
end

module LinkedList

	class List
	      attr_accessor :First, :Last
	      attr_reader :Size
	   def initialize
 	      @Last = @First = @Back = nil
              @Size = 0
           end

	   def push_back(v)
              if(@Size == 0)
		  @Last = @First = Node.new(v,nil)
              else
                  @Last.next = Node.new(v,nil)
		  @Last.next.back = @Last
		  @Last = @Last.next
              end
              @Size = @Size + 1 
           end


           def at(i)
              aux = @First
              j = 0
              while(j < i) do
		aux = aux.next
                j = j + 1
              end
              aux
           end


	
        end
  # Your code goes here...
end

