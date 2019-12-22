require_relative('./node.rb')

def preorderTraversal(root, result=[])
    if root.nil?
        return result
    else
        result << root.val
        preorderTraversal(root.left, result)
        preorderTraversal(root.right, result)
    end
    result
end


node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)

node1.left = node2
node1.right = node3
node2.left = node4

puts preorderTraversal(node1)
