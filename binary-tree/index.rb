require_relative('./node')
require_relative('./tree')
require 'pp'

tree = Tree.new
prng = Random.new

4.times {|i|
	tree.addValue(prng.rand(100))
}

pp tree.root
