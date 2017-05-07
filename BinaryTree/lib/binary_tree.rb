class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end

end

def dfs(node)
  puts node.payload
  node.left.each do |l|
    left = node.dfs(l.left) if node.left
  end
  node.right.each do |r|
    right = node.dfs(l.right) if node.right
  end
  left || right
end


seven = BinaryTree.new(7, nil, nil)
five = BinaryTree.new(5, nil, nil)
four = BinaryTree.new(4, nil, nil)
six = BinaryTree.new(6, nil, seven)
three = BinaryTree.new(3, nil, six)
two = BinaryTree.new(2, four, five)
trunk = BinaryTree.new(1, two, three)


array = [7, 4, 9, 1, 6, 14, 10]

dfs(trunk)

# loop through array and build tree
# flatten tree and return a sorted array
