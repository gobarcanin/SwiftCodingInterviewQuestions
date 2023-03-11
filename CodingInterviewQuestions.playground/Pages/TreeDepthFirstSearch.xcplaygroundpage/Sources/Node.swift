
public class Node {
	public let value: Int
	public let left: Node?
	public let right: Node?
	
	public init(value: Int, left: Node? = nil, right: Node? = nil) {
		self.value = value
		self.left = left
		self.right = right
	}
}
