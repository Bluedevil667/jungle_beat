require "./lib/linked_list"

class JungleBeat
  
  attr_reader :list, :data
  attr_accessor :rate, :voice

  def initialize
    @list = LinkedList.new
    @rate = 300
    @voice = "Daniel"
  end

  def append(data)
    data.split.each do |sound|
      list.append(sound)
    end
    return data
  end

  def count
    list.count
  end

  
end