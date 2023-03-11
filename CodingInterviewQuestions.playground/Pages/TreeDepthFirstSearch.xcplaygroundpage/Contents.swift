/*
 Given a binary tree of integers root, create 3 functions to print the tree nodes in preorder, inorder, and postorder traversal.
 Preorder: print the root value, then print the left subtree, then print the right subtree.
 Inorder: print the left subtree, then print the root value, then print the right subtree.
 Postorder: print the left subtree, then print the right subtree, then print the root value.
 
 Time complexity O(n)
 Space complexity O(h) h -> height of tree
 */

func dfsPreorder(node: Node?) {
	guard let node = node else {
		return
	}
	print(node.value)
	dfsPreorder(node: node.left)
	dfsPreorder(node: node.right)
}

func dfsInOrder(node: Node?) {
	guard let node = node else {
		return
	}
	dfsInOrder(node: node.left)
	print(node.value)
	dfsInOrder(node: node.right)
}

func dfsPostorder(node: Node?) {
	guard let node = node else {
		return
	}
	dfsPostorder(node: node.left)
	dfsPostorder(node: node.right)
	print(node.value)
}


let thirdOne = Node(value: 3)
let thirdTwo = Node(value: 4)
let thirdThree = Node(value: 6)
let thirdFour = Node(value: 7)

let secondLeft = Node(value: 2, left: thirdOne, right: thirdTwo)
let secondRight = Node(value: 5, left: thirdThree, right: thirdFour)

let top = Node(value: 1, left: secondLeft, right: secondRight)
print("preorder")
dfsPreorder(node: top)
print("inorder")
dfsInOrder(node: top)
print("postorder")
dfsPostorder(node: top)
