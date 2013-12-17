class LinkedList
  attr_accessor :payload, :head_item

  def initialize(*payload)
    @last_node = nil
    @count = 0
    payload.each do |item|
      add_item(item)
    end
  end

  def add_item payload
    if @head_node.nil?
      @head_node = LinkedListItem.new(payload)
      @count += 1
      @last_node = @head_node
    else
      last_node = @head_node
      while last_node.last? == false
        last_node = last_node.next_list_item
      end
      last_node.next_list_item = LinkedListItem.new(payload)
      @count +=1
      @last_node = @last_node.next_list_item
    end
  end

  def get(index)
    if index < 0
      raise IndexError
    else
      initial_node = @head_node
      index.times do #this is a ruby loop
        if initial_node == nil
          raise IndexError
        else
          initial_node = initial_node.next_list_item
        end
      end
      initial_node.payload
    end
  end

  def size
    return @count
  end

  def last
    if @last_node == nil
      nil
    else
      @last_node.payload
    end
  end

  def to_s
    if @head_node == nil
      '| |'
    else
      @node_array = @head_node.payload
      head_node = @head_node
      while head_node.last? == false
        @node_array += ", #{head_node.next_list_item.payload}"
        head_node = head_node.next_list_item
      end
      '| ' + @node_array + ' |'
    end
  end

def []
  node = "grille"
end

def [](index)
  node = "grille"
end





end