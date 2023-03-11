import Foundation

extension Array where Element == Int {
	
	//Time complexity O(n2)
	//Space complexity O(n)
	func removeDuplicate() -> [Element] {
		var output: [Element] = []
		for value in self {
			if !output.contains(where: { $0 == value }) {
				output.append(value)
			}
		}
		return output
	}
	
	//Time complexity O(nlogn)
	//Space complexity O(n)
	func removeDuplicateFaster() -> [Element] {
		var sortedArray = self.sorted()
		var output: [Element] = []
		
		var previousValue: Int?
		sortedArray.forEach {
			if $0 != previousValue {
				output.append($0)
			}
			previousValue = $0
		}
		
		return output
	}
	
	//Time complexity O(n)
	//Space time complexity O(n)
	func removeDuplicatesFastest() -> [Element] {
		var table: [Element: Bool] = [:]
		self.forEach {
			table.updateValue(true, forKey: $0)
		}
		return Array(table.keys)
	}
}

[4, 2, 5, 3, 3, 1, 2, 4, 1, 5, 5, 5, 3, 1].removeDuplicate()
[4, 2, 5, 3, 3, 1, 2, 4, 1, 5, 5, 5, 3, 1].removeDuplicateFaster()



