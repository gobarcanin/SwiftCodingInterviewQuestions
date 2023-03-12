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
	
	public func isPalindrome() -> Bool {
		var slow = _head
		var fast = _head
		
		while fast != nil && fast?.next != nil {
			slow = slow?.next
			fast = fast?.next?.next
		}
		slow = reverseListFrom(head: slow)
		var head = _head
		
		while slow != nil {
			if slow?.value != head?.value {
				return false
			}
			slow = slow?.next
			head = head?.next
		}
		
		return true
	}
}
