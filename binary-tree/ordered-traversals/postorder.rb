require_relative('./node.rb')

def postorderTraversal(root, result=[])
    if root.nil?
        return result
    else
        postorderTraversal(root.left, result)
        postorderTraversal(root.right, result)
        result << root.val
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

puts postorderTraversal(node1)
