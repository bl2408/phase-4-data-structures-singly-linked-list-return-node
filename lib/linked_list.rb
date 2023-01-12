require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # your code here

    node = head

    listLength = 0
    while node
      node = node.next_node
      listLength += 1
    end

    return nil if n < 1 || n > listLength

    get_node = head
    i = 1
    while i < listLength - n + 1
      get_node = get_node.next_node
      i += 1
    end

    get_node.value
  end

end
