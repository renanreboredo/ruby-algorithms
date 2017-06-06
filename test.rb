require_relative "node"
require_relative "graph"

graph = []

node = Node.new(1, [6, 2])
graph.push(node)
node = Node.new(2, [1, 5])
graph.push(node)
node = Node.new(3, [4, 7, 6])
graph.push(node)
node = Node.new(4, [3, 7, 8])
graph.push(node)
node = Node.new(5, [2])
graph.push(node)
node = Node.new(6, [1, 7, 3])
graph.push(node)
node = Node.new(7, [3, 4, 6, 8])
graph.push(node)
node = Node.new(8, [4, 7])
graph.push(node)

@graph = Graph.new(graph)
