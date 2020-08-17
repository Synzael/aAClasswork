require 'set'

class GraphNode
  attr_accessor :val, :neighbornodes

  def initialize(val)
    self.val = val
    self.neighbornodes = []
  end

  def add_neighbor(node)
    self.neighbornodes << node
  end
end

def bfs(first_node, target)
  queue = [first_node]
  visited = Set.new()

  until queue.empty?
    node = queue.shift
    unless visited.include?(node)
      return node.val if node.val == target
      visited.add(node)
      queue += node.neighbornodes
    end
  end
  
  return nil
end