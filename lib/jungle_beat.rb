require "./lib/linked_list"

class JungleBeat
  
  attr_reader :list, :data
  attr_accessor :rate, :voice

  def initialize
    @list = LinkedList.new
    @rate = 300
    @voice = "Daniel"
  end

  
end