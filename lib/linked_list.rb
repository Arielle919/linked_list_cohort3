class LinkedList
  attr_accessor :payload, :head_item

  def initialize(*payload)
    @count = 0
    @last_item = nil
  end

  def add_item payload
    if @head_item == nil
      @head_item = LinkedListItem.new(payload)
      @count += 1
      initial_node = @head_item
    else
      initial_node = @head_item
      while initial_node.next_list_item != nil
        initial_node = initial_node.next_list_item
      end
      initial_node.next_list_item = LinkedListItem.new(payload)
      @count += 1
      @last_item = initial_node.next_list_item
    end
  end

  def get(index)
    if index < 0
      raise IndexError
    elsif @head_item == nil
      raise IndexError
    else
      initial_node = @head_item
      index.times do #this is a ruby loop
        initial_node == nil ? (raise IndexError) : initial_node = initial_node.next_list_item
      end
      initial_node.payload
    end
  end
#_----

  def size
    return @count
  end

   def last
    return @head_item if @head_item == nil

    initial_node = @head_item
    until initial_node.last? do
      initial_node = initial_node.next_list_item
    end
    return initial_node.payload
  end




end