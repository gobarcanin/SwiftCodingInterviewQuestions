/*
 Given a non-empty array of integers arr, create a function that returns the sum of the subarray that has the greatest sum.
 We don't consider the empty array [] as a subarray.
 
Example:
 Input: arr = [2, 3, -6, 4, 2, -8, 3]
 Output: 6
 Explanation: the maximum subarray is [4, 2], its sum is 6
 */

import Foundation

extension Array where Element == Int {
	
	//Time complexity O(n3) --> can be generalized to O(n2)
	//Space complexity O(1)
	func findGreatestSubarraySum() -> Element {
		var maxSum = Int.min
		for i in 0..<self.count {
			for j in i..<self.count {
				var currentSum = 0;
				for k in i..<j {
					currentSum += self[k]
				}
				maxSum = Swift.max(currentSum, maxSum)
			}
		}
		return maxSum
	}
	
	//Time complexity O(n2)
	//Space complexity O(1)
	func fasterFindingGreatestSubarraySum() -> Element {
		var maxSum = Int.min
		for i in 0..<self.count {
			var cumulativeSum = 0
			for j in i..<self.count {
				cumulativeSum += self[j]
				maxSum = Swift.max(cumulativeSum, maxSum)
			}
		}
		return maxSum
	}
	
	//Time complexity O(n)
	//Space complexity O(1)
	func evenFasterFindingGreatestSubarraySum() -> Element {
		var globalSum: Int = Int.min
		var localSum: Int = 0
		for value in self {
			localSum = Swift.max(value, localSum + value)
			globalSum = Swift.max(localSum, globalSum)
		}
		return globalSum
	}
	
}

[2, 3, -6, 4, 2, -8, 3].findGreatestSubarraySum()
[2, 3, -6, 4, 2, -8, 3].fasterFindingGreatestSubarraySum()
[2, 3, -6, 4, 2, -8, 3].evenFasterFindingGreatestSubarraySum()
