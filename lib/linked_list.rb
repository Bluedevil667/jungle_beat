class LinkedList
  
  attr_reader :head, :data

  def initialize
    @head = head
  
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      current = @head

    until current.next_node.nil?
      current = current.next_node
    end

    current.next_node = Node.new(data)
    end

    return data
  end

  def empty
    if @head == nil
      empty = true
    else 
      empty = false
    end
  end

  
end