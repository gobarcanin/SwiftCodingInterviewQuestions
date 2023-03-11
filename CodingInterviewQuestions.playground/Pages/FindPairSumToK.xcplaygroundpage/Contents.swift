/*
FINDING SUM OF K
 
Given an array of integers arr and an integer k,
create a boolean function that checks if there exist two elements in arr such that we get k when we add them together.

*/
 
import Foundation

public extension Array where Element == Int {
	
	//Time complexity O(n2)
	//Space complexity O(1)
	func find(findingSum: Int) -> Bool {
		let sortedArray = self.sorted()
		for i in 0..<sortedArray.count {
			for j in (i + 1)..<sortedArray.count  {
				if (sortedArray[i] + sortedArray[j] == findingSum) {
					return true
				}
			}
		}
		return false
	}
	
	//Time complexity O(nlogn)
	//Space complexity --> depending on sorting algorithm
	func fasterFind(findingSum: Int) -> Bool {
		let sortedArray = self.sorted()
		var left = 0
		var right = (sortedArray.count - 1)
		while left < right {
			let currentSum = sortedArray[left] + sortedArray[right]
			if sortedArray[left] + sortedArray[right] == findingSum {
				return true
			} else if currentSum < findingSum {
				left += 1
			} else if currentSum > findingSum {
				right -= 1
			}
		}
		return false
	}
	
	//Time complexity O(n)
	//Space complexity O(n)
	func fastestFind(findingSum: Int) -> Bool {
		var resultTable: [Int: Bool] = [:]
		for i in 0..<self.count {
			let result = findingSum - self[i]
			if resultTable[result] != nil { // --> lookup in hash tables should be O(1)
				resultTable.updateValue(true, forKey: self[i]) // --> insertion in hash tables should be O(1)
			} else {
				return true
			}
		}
		return false
	}
}

[8, 2, 9, 5, 10, 1].find(findingSum: 15)
[8, 2, 9, 5, 10, 1].fasterFind(findingSum: 15)
[8, 2, 9, 5, 10, 1].fastestFind(findingSum: 15)
