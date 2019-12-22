require_relative('./node.rb')

def inorderTraversal(root, result=[])
    if root.nil?
        return result
    else
        inorderTraversal(root.left, result)
        result << root.val
        inorderTraversal(root.right, result)
    end
    return result
end


node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)

node1.left = node2
node1.right = node3
node2.left = node4

puts inorderTraversal(node1)