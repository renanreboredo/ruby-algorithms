class Graph
  attr_accessor :nodes

  def initialize(nodes=[])
    @nodes = nodes
  end

  def pop_node(index)
    self.nodes.each do |node|
      self.nodes.delete(node) if node.id == index
    end
  end

  def init_bfs(origin_id)
    self.nodes.each do |node|
      node.prev = nil
      node.visited = false
      if node.id == origin_id
        node.distance = 0
      else
        node.distance = -1
      end
    end
  end

  def bfs(origin_id)
    queue = []
    self.init_bfs(origin_id)
    puts "id: #{origin_id}"
    queue.push(origin_id)
    while not queue.empty? do
      u = queue.pop
      node = Node.get_node(self,u)
      node.neighbours.each do |neighbour_id|
        neighbour = Node.get_node(self,neighbour_id)
        if neighbour.visited == false
          neighbour.distance = node.distance + 1
          neighbour.distance = u
          queue.push(neighbour_id)
        end
      end
      print queue
      node.visited = true
    end
  end
end
