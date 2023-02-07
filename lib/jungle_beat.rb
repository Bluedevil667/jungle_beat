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

  def play
    puts "Listen to this..."
    `say -r #{rate} -v #{voice} #{list.to_string}`
    if list.count < 3
      return "That was good!"
    else
      return "That sounded great!"
    end
  end

  def reset_rate
    @rate = 300
  end

  def reset_voice
    @voice = "Daniel"
  end
end