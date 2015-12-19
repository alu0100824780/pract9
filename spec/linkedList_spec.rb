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
    @n = Node.new(10,nil,nil)
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
		    @l.push_back(50)
		    @l.push_back(60)
		    expect(@l.Size).to eq(4)
		end

                it 'can access to diferent positions in the list' do
		    expect(@l[0]).to eq(30)
                    expect(@l[1]).to eq(40)
                    expect(@l[2]).to eq(50)
                    expect(@l[3]).to eq(60)
                end

		it 'can extract first element' do
		    expect(@l.pop_front.value).to eq(30)
                    expect(@l.pop_front.value).to eq(40)
		    expect(@l.pop_front.value).to eq(50)
                    expect(@l.pop_front.value).to eq(60)
		end

		it 'can extract last element' do
                    @l.push_back(80)
                    expect(@l.pop_back.value).to eq(80)
		end

		it 'can be empty' do
		    expect(@l.empty).to eq true
                end

        end

	context 'Double linked list' do
		it 'know about behind object' do
                     @l.push_back(50)
                     @l.push_back(40)
		     expect(@l.Last.back.value).to eq 50
		end

		it 'can put node at first position' do
		      @l.push_front(70)
                      expect(@l.First.value).to eq 70
		end


        end


    context 'is Enumerable' do
	    @b1 = Bibliografia::Book.new
      @b2 = Bibliografia::Book.new
      @b3 = Bibliografia::Book.new
      @l = LinkedList::List.new

      @l << @b1
      @l << @b2
      @l << @b3


	    it "comprobrando el metodo all? con un bloque vacio" do
      		expect(@l.all?).to eq(true)
    	    end
	    it "comprobrando el metodo any?" do
	        expect(@l.any?).to eq(true)
	    end
	    it "comprobrando el metodo collect" do
	        expect(@l.map{|i| i*i}).to eq([4900,2500,1600])
	    end
	    it "comprobrando el metodo count" do
	        expect(@l.count).to eq(3)
    	    end
	    it "comprobrando el metodo detect" do
	        expect(@l.detect {|i| i == 70}).to eq(70)
	        expect(@l.find {|i| i == 50}).to eq(50)
	    end
	    it "comprobrando drop" do
	        expect(@l.drop(1)).to eq([50,40])
	    end
	    it "comprobrando max" do
	        expect(@l.max).to eq(70)
	    end
    	    it "comprobrando min" do
	        expect(@l.min).to eq(40)
    	    end
	    it "comprobrando sort" do
	        expect(@l.sort).to eq([40,50,70])
	    end

        end
end



describe "Bibliografia" do
     before :all do
	@b = Bibliografia::Book.new
        @r = Bibliografia::Revista.new
     end


     it "can compare authors" do
	@b.add_author("Rudolf Cicko")
	@r.add_author("Rudolf Cicko")
	expect(@b <=> @r).to eq 0
     end


     it "can compare publication dates" do
	@b.set_publication(24,11,2015)
        @r.set_publication(4,3,2013)
	expect(@b <=> @r).to eq 1
     end
end
