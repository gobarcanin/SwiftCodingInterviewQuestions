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
		for i in 1..<self.count {
			print(self[i])
			for j in 0..<i {
				print(self[j])
				if self[i] == self[j]{
					return self[i]
				}
			}
		}
		return nil
	}
	
	//Time complexity O(nlogn)
	//Space complexity --> depends on sorting algorithm
	func findDuplicateFaster() -> Element? {
		let sortedArray = self.sorted()
		for i in 1..<sortedArray.count {
			if  sortedArray[i-1] == sortedArray[i] {
				return sortedArray[i]
			}
		}
		return nil
	}
	
	//Time complexity O(n)
	//Space complexity O(n)
	func findDuplicateFastest() -> Element? {
		var table: [Element: Bool] = [:]
		for i in 0..<self.count {
			guard table[self[i]] == nil else {
				return self[i]
			}
			table.updateValue(true, forKey: self[i])
		}

		return nil
	}
	
	//Floyd cycle detection algorithm(Tortois and hare)
	// https://en.wikipedia.org/wiki/Cycle_detection
	//Time complexity O(n)
	//Space complexity O(1)
	func findDuplicateAtSpeedOfLight() -> Element? {
		var tortoise = self[0]
		var hare = self[self[0]]
		
		while tortoise != hare {
			tortoise = self[tortoise]
			hare = self[self[hare]]
		}
		
		tortoise = 0
		while tortoise != hare {
			tortoise = self[tortoise]
			hare = self[hare]
		}
		return tortoise
	}
	
}


[4, 2, 5, 3, 3, 1, 2, 4, 1, 5, 5, 5, 3, 1].findDuplicate()
[4, 2, 5, 3, 3, 1, 2, 4, 1, 5, 5, 5, 3, 1].findDuplicateFaster()
[4, 2, 5, 3, 3, 1, 2, 4, 1, 5, 5, 5, 3, 1].findDuplicateFastest()
[4, 2, 5, 3, 3, 1, 2, 4, 1, 5, 5, 5, 3, 1].findDuplicateAtSpeedOfLight()
