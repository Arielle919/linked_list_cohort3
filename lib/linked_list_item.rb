class LinkedListItem
  attr_accessor :payload, :next_list_item
  include Comparable

  def initialize(payload)
    @payload = payload
  end

 #everything with def is a method for the class LinkedListItem
  def next_list_item=(next_list_item) #initializes this method to be used
    if next_list_item == self#self in instance of this class http://www.jimmycuadra.com/posts/self-in-ruby
      raise ArgumentError, "Self can't be set as following item"
    else
      @next_list_item = next_list_item
    end
  end

  def last? #the last item is nil
    self.next_list_item.nil?
  end

   def === linked_list_item
    if self.object_id == linked_list_item.object_id
      true
    end
  end

  def <=> compared_linked_list_item
    #objects being compared :apple > "bar"
    return 1 if self.payload.is_a?(Symbol) and compared_linked_list_item.payload.is_a?(String)
    return -1 if self.payload.is_a?(String) and compared_linked_list_item.payload.is_a?(Symbol)
    return -1 if self.payload.is_a?(Fixnum) and compared_linked_list_item.payload.is_a?(String)
    return 1 if self.payload.is_a?(String) and compared_linked_list_item.payload.is_a?(Fixnum)
    return -1 if self.payload.is_a?(Fixnum) and compared_linked_list_item.payload.is_a?(Symbol)
    return 1 if self.payload.is_a?(Symbol) and compared_linked_list_item.payload.is_a?(Fixnum)
    self.payload <=> compared_linked_list_item.payload
  end

end