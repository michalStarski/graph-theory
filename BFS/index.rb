require_relative('./graph')
require_relative('./node')
require 'pp'

#Given situation - We've got a bus lines that goes around for stops
#Problem: Find the shortest path between two points

#The graph can be presented as following:
#Nodes are lines and stops and vertices are the connections between them
#i.e we can go from A to D only by line 14

# 	  C
# 	  |
# A	  6 -- B
# |	  |	   |
# 14 -- D -- 5

g = Graph.new

#Stops
a_stop = Node.new("A")
b_stop = Node.new("B")
c_stop = Node.new("C")
d_stop = Node.new("D")

#Lines
fourteen = Node.new(14)
six = Node.new(6)
five = Node.new(5)

a_stop.add_edge(fourteen)
d_stop.add_edge(fourteen)
d_stop.add_edge(six)
d_stop.add_edge(five)
c_stop.add_edge(six)
b_stop.add_edge(six)
b_stop.add_edge(five)

g.root = c_stop

def bfs(graph, target)
	queue = []
	graph.root.checked = true
	queue << graph.root
	while !queue.empty? do
		node = queue.shift
		if node.value == target
			return get_route(node)
		end
		node.edges.each { |n|
			unless n.checked
				n.checked = true
				n.parent = node
				queue << n
			end
		}
	end
end

def get_route(destination)
	route = []
	route << destination.value
	while destination.parent
		route << destination.parent.value
		destination = destination.parent
	end
	return route.reverse
end

#Example usage
pp bfs(g, "A")
