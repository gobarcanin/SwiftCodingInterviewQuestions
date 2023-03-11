
public class Node {
	public let value: Int
	public var left: Node?
	public var right: Node?
	
	public init(value: Int, left: Node? = nil, right: Node? = nil) {
		self.value = value
		self.left = left
		self.right = right
	}
	
	public func reverseNodes() {
		let temp = left
		self.left = right
		self.right = temp
		left?.reverseNodes()
		right?.reverseNodes()
	}
}
