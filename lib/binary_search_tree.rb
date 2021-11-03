require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def insert(value)
    new_node = Node.new(value)
    if @root == nil
      @root = new_node
      return self
    end

    current = @root

    while(true)
      return nil if value == current.value
      if value < current.value 
        if current.left == nil
          current.left = new_node 
          return self
        end
        current = current.left
      else
        if current.right == nil
          current.right = new_node 
          return self
        end
        current = current.right
      end
    end
  end

  def search(value)
    return nil if @root == nil

    current = @root
    found = false

    while current && !found
      if value < current.value
        current = current.left
      elsif value > current.value
        current = current.right
      else
        found = true
      end
    end
    found ? current : nil
  end
end 



