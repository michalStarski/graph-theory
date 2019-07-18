require_relative('./node')

class Tree
	def initialize()
		@root = nil
	end
	attr_accessor :root

	def addValue(val)
		node = Node.new(val)
		if(@root) then
			@root.addNode(node)
		else
			@root = node
		end
	end
end
