/*
 Given an array of integers arr that contains n+1 elements between 1 and n inclusive,
 create a function that returns the duplicate element (the element that appears more than once).
 
 Assume that:
	- There is only one duplicate number
	- The duplicate number can be repeated more than once
 */

import Foundation

extension Array where Element == Int {
	
	//Time complexity O(n2)
	//Space complexity O(1)
	func findDuplicate() -> Element? {
		for i in 0..<self.count {
			print(self[i])
			for j in (i+1)..<self.count {
				print(self[j])
				if self[i] == self[j]{
					return self[i]
				}
			}
		}
		return nil
	}
	
}


[4, 2, 1, 3, 1].findDuplicate()
