public class LinkedList {
	public var _head: Node?
	
	public init(head: Node?) {
		self._head = head
	}
	
	public func reverseList() {
		_head = reverseListFrom(head: _head)
	}
	
	public func reverseListFrom(head: Node?) -> Node? {
		guard let head = head else {
			return head
		}
		
		if (head.next == nil) {
			return head
		}
		
		let newNode = reverseListFrom(head: head.next)
		
		head.next?.next = head
		head.next = nil
		return newNode
	}
}
