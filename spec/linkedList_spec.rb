require 'spec_helper'
require './lib/node.rb'
require './lib/linkedList.rb'


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
