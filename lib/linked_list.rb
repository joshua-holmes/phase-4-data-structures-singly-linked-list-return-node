require_relative './node'
require 'pry'
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    i = get_length
    return nil if i < n || n < 1
    current_node = head
    while i > n
      current_node = current_node.next_node
      i -= 1
    end
    current_node.value
  end

  def get_length
    current_node = head
    count = 0
    while current_node do
      count += 1
      current_node = current_node.next_node
    end
    count
  end

end
