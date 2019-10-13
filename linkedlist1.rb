class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
    attr_reader :head

    def initialize(value)
        @head = Node.new(value)
    end

    # Push a value onto the stack
    def push(value)
        @head = Node.new(value, @head)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
      return_value = @head.value
      @head = @head.next_node
      return return_value
    end

    def reverse
      stack = Stack.new(pop)
      
      while !@head.nil?
        stack.push(pop)
      end
        return stack
    end

end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end
  
# node1 = Node.new(37)
# node2 = Node.new(99, node1)
# node3 = Node.new(12, node2)
stack = Stack.new(1)
stack.push(2)
stack.push(3)
print_values(stack.head)
print_values(stack.reverse.head)

