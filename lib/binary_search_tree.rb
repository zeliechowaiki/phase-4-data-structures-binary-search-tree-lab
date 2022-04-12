require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)
    return nil if @root.nil?
    if @root.value == value
      return @root
    elsif value < @root.value && @root.left
      return BinarySearchTree.new(@root.left).search(value)
    elsif value > @root.value && @root.right
      return BinarySearchTree.new(@root.right).search(value)
    end
    return nil
  end

  def insert(value)
    return self.root = Node.new(value) if @root.nil?
    if @root.value == value
      return nil
    elsif value < @root.value
      return @root.left = Node.new(value) if @root.left.nil?
      return BinarySearchTree.new(@root.left).insert(value)
    elsif value > @root.value
      return @root.right = Node.new(value) if @root.right.nil?
      return BinarySearchTree.new(@root.right).insert(value)
    end
    return nil
  end

end 
