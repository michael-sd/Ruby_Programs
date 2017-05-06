require 'byebug'

class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end

def bfs(node, value)
  queue = []
  queue.push(node)

  while (queue.size != 0)
    n = queue.shift
    puts n.payload
    n.children.each do |child|
      queue.push(child)
    end
    nil
  end
end

# The "Leaves" of the tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node = Tree.new(4, [])

# The "Branches" of the tree.
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree.
trunk = Tree.new(2, [seventh_node, shallow_fifth_node])

bfs(trunk, 11)
