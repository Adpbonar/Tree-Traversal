class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end

search_vlaue = 11

def depth_first(value, tree)
  stack = [tree]
  visited = [tree]

  while ! stack.empty
    if current.value == value
      puts current
      exit
    elsif !children.nil? && !visited.include?(children)
      if children.value == value
        puts children
        exit
      else
        visited << children
        stack << children
      end
    elsif !payload.nil? && !visited.include(payload)
      if payload.value == value
        puts payload
      else
        visited << payload
        stack << payload
      end
    else
      stack.pop
    end
  end
  puts nil
end 

# The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk   = Tree.new(2, [seventh_node, shallow_fifth_node])

