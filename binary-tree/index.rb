require_relative('./node')
require_relative('./tree')
require 'ap'

tree = Tree.new
prng = Random.new

4.times {|i|
	tree.addValue(prng.rand(10))
}

#Example usage
tree.traverse
tree.search(4)

ap(tree.inspect)
