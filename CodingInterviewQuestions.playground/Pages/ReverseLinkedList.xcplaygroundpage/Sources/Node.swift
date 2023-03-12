public class Node {
	public let value: Int
	public var next: Node?
	
	public init(value: Int, next: Node? = nil) {
		self.value = value
		self.next = next
	}
}

extension Node: CustomStringConvertible {
	public var description: String {
		"Value: \(value), nextValue: \(next?.value ?? -1)"
	}
}
