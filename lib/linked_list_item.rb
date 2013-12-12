class LinkedListItem
  attr_accessor :payload, :next_list_item
  include Comparable
  #The Comparable mixin is used by classes whose objects may be ordered. The class must define the <=> operator, which compares the receiver against another object, returning -1, 0, or +1 depending on whether the receiver is less than, equal to, or greater than the other object. If the other object is not comparable then the <=> operator should return nil. Comparable uses <=> to implement the conventional comparison operators (<, <=, ==, >=, and >) and the method between?.
  #http://ruby-doc.org/core-2.0.0/Comparable.html

  def initialize(payload)
    @payload = "foo"
  end



end







