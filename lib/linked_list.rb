require 'linked_list_item'

class LinkedList
  attr_reader :first_item

  def initialize *args
   @size = 0
  end

  def add_item(payload)
    if @first_item.nil?
    @first_item = LinkedListItem.new(payload)
    else
    item = @first_item
    until item.next_list_item.nil?
      item = item.next_list_item
    end
    item.next_list_item = LinkedListItem.new(payload)
    end
    @size += 1
  end

  def get(n)
    i = 0
    item = @first_item
    while i < n
      raise IndexError, "No item at that index" if item.nil?
      item = item.next_list_item
      i += 1
    end
    item.payload
  end

  def last
    if size == 0
      nil
    else
      last_item = @first_item
      until last_item.last?
        last_item = last_item.next_list_item
      end
    end
    last_item.payload
  end

  def size
   @size
  end

  def to_s
    all_items = []
    0.upto( self.size - 1 ) { |num| all_items << self.get(num) }
    string = "| #{all_items.join(", ")}#{all_items.size > 0 ? ' ' : ''}|"
  end
      

  # ========= Bonus ========== #

  def [](payload)
  end

  def []=(n, payload)
  end

  def remove(n)
  end

end
