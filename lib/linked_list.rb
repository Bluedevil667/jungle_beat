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

  def prepend(data)
    node = Node.new(data)

    if empty == true
      @head = node
    else
      @next_node = @head
      @head = node
    end
    return data
  end

  def count
    return 0 if @head == nil
    count = 1
    current_node = @head      
    while current_node.next_node != nil
      current_node = current_node.next_node
      count += 1
    end
    count
  end

  def to_string
    return "" if @head == nil
    current_node = head
    nodes = [current_node.data]
    while current_node.next_node != nil
      current_node = current_node.next_node
      nodes << current_node.data
    end
    nodes.join(" ")
  end

  def insert(position, data)
    current_node = @head
    count = 1
    if position == 0
      prepend(data)
    end
    if position > 0
      until count == position
        current_node = current_node.next_node
        count += 1
      end
      node_to_insert = Node.new(data)
      node_to_insert.next_node = current_node.next_node
      current_node.next_node = node_to_insert
    end
    return data
  end

  def find(position, number_of_elements)
    count = 0
    current_node = @head
    until count == position
      current_node = current_node.next_node
      count += 1
    end
    found = ""
    count = 0
    until count == number_of_elements
      count += 1
      found << current_node.data + " "
      current_node = current_node.next_node
    end
    return found.chomp
  end
  
  def pop
    if @head == nil
      return
    elsif @head.next_node.nil?
      element_to_return = @head.data
      @head = nil
      element_to_return
    else
      current_node = @head
      until current_node.next_node.next_node.nil?
        current_node = current_node.next_node
      end
      data_to_pop = current_node.next_node.data
      current_node.next_node = nil           
      return data_to_pop
    end
  end
end