class Node
	def initialize(value)
		@left = nil
		@right = nil
		@value = value
	end
	attr_accessor :left, :right, :value

	def addNode(node)
		if(node.value < @value) then
			if(left) then
				@left.addNode(node)
			else
				@left = node
			end
		elsif(node.value > @value) then
			if(right) then
				@right.addNode(node)
			else
				@right = node
			end
		end
	end

	def visit
		if(@left) then
			@left.visit
		end
		puts @value
		if(@right) then
			@right.visit
		end
	end

	def search(val)
		if @value == val then
			p self
		end
		if(val < @value && @left) then
			@left.search(val)
		elsif(val > @value && @right) then
			@right.search(val)
		end
	end
end
