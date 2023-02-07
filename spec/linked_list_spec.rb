require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do

  it 'Has Linked List' do 
    list = LinkedList.new

  end
  
  it 'head == nil' do 

    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it 'can append data' do

    list = LinkedList.new
    list.append("doop")

    expect(list.append("doop")).to eq("doop")
  end

  it 'can verify empty list' do

    list = LinkedList.new

    expect(list.empty).to be true
  end

  it 'has next node' do

    list = LinkedList.new
    list.append("doop")
    
    expect(list.head.next_node).to eq(nil)
  end

  it 'can prepend' do

    list = LinkedList.new
    list.append("doop")
    list.prepend("deep")
    # require 'pry'; binding.pry
    expect(list.prepend("deep")).to eq("deep")
  end

  it 'can count nodes' do

    list = LinkedList.new
    list.append("deep")

    expect(list.count).to eq(1)
  end

  it 'can convert data to sting' do

    list = LinkedList.new
    list.append("deep")
    list.append("deep")
    list.append("deep")
    
    expect(list.to_string).to eq("deep deep deep")
  end

  it 'can insert data anywhere' do 

    list = LinkedList.new
    list.append("dop")
    list.append("plop")
    list.append("suu")
    list.insert(1, "woo")


    expect(list.insert(1, "woo")).to eq("woo")
  end

  it 'can find nodes' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    
    
    expect(list.find(1, 3)).to eq("woo shi shu ")
  end

  it 'can pop nodes' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    
    expect(list.pop).to eq("blop")
  end
end