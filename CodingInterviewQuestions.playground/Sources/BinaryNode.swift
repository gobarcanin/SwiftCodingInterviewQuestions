
public class BinaryNode {
	public let value: Int
	public var left: BinaryNode?
	public var right: BinaryNode?
	
	public init(value: Int, left: BinaryNode? = nil, right: BinaryNode? = nil) {
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
