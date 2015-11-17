require 'spec_helper'


describe LinkedList do
  it 'has a version number' do
    expect(LinkedList::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end
end



describe LinkedList::List do
  before :all do
    @n = Node.new(10,nil)
    @l = LinkedList::List.new
  end


  it 'Exist a node of the list with it data and next reference' do
      expect(@n.value == 10 && @n.next == nil)
  end

   it  'Can create a list' do
      expect(LinkedList::List.new).not_to eq(nil)
   end


	context 'Manipulate data' do
  		it 'Can get first element of the list' do
		     @l.push_back(30)
		     expect(@l.First.value).to eq(30)
		end

		it 'Can insert an element into the list' do
		     @l.push_back(40)
		     expect(@l.Last.value).to eq(40)
		end

  
		it 'Can insert more than one element' do
		    @l.push_back(Node.new(50,nil)) 
		    @l.push_back(Node.new(60,nil))
		    expect(@l.Size).to eq(4)
		end
         end
end



describe Bibliografia::Book do
	before :all  do
		@b = Bibliografia::Book.new
        end

	it "exists a book" do
            expect(@b.is_a?Bibliografia::Book).to eq true
        end

	it "has an ISBN number" do
	    @b.add_ISBN(23)
            expect(@b.ISBN[0]).to eq 23
        end

	it "is a Bibliografia" do
	    expect(@b.is_a?Bibliografia::Bibliografia).to eq true
        end

	it "is a subclass of basicObject" do
            expect(@b.is_a?BasicObject).to eq true
	end
end


describe Bibliografia::Revista do
	before :all do
		@r = Bibliografia::Revista.new
	end

	it "exist a magazine" do
		 expect(@r.is_a?Bibliografia::Revista).to eq true
	end
end
