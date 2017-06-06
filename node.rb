class Node
  attr_accessor :id, :neighbours, :distance, :prev, :visited

  def initialize(id,neighbours=[],distance=-1,prev=nil,visited=false)
    @id = id
    @neighbours = neighbours
    @distance = distance
    @prev = prev
    @visited = visited
  end

  def self.get_node(graph,origin_id)
    graph.nodes.each do |node|
      return node if node.id == origin_id
    end
  end
end
