require 'byebug'
class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end

def dfs(node, value)
  puts node.payload
  return node if node.payload == value
  node.children.each do |child|
    node = dfs(child, value)
    return node if node
  end
  nil
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

#dfs(eleventh_node, 11)
dfs(trunk, 9)



# check if payload is equal to node searching for.
# if so return nil
# if not, start at the source node (trunk).
# check for children nodes.
# if it doesnt have children, return nil. search is complete
# if it does, loop through each of the children and perform line 26 on child and check it's value.
#   if its value is nil, it hasnt been found.
#     it its value is not nil, return the value.
