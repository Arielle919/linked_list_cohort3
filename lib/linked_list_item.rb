class LinkedListItem
  attr_accessor :payload, :next_list_item
  #attr_accessor :my_variable creates the methods to assign and to read the
  #instance variable '@my_variable'. Which saves you from defining these
  #methods yourself
  include Comparable
  #The Comparable mixin is used by classes whose objects may be ordered.
  #The class must define the <=> operator, which compares the receiver
  #against another object, returning -1, 0, or +1 depending on whether
  #the receiver is less than, equal to, or greater than the other object.
  #If the other object is not comparable then the <=> operator should return nil.
  #Comparable uses <=> to implement the conventional comparison operators
  #(<, <=, ==, >=, and >) and the method between?.

  def initialize(payload)
    @payload = payload
  end

  def next_list_item=(next_list_item) #initializes this method to be used
    if next_list_item == self#self in instance of this class http://www.jimmycuadra.com/posts/self-in-ruby
      raise ArgumentError
    else
      @next_list_item = next_list_item
    end
    def last? #the last item is nil
      @next_list_item.nil?
    end
  end



end