/*
 Given a non-empty array of integers arr, create a function that returns the index of a peak element.
 We consider an element as peak if it's greater than or equal to its neighbors, the next and previous
 element (assume that arr[-1] and arr[n] are equal to -∞).
 
 And if there are multiple peaks in arr, just return the index of one of them.
 
Example:
 Input: arr = [4, 5, 8, 3]
 Output: 2
 Explanation: arr[2] is a peak element because it's greater than or equal to arr[1], and greater than or equal to arr[3]
 
Example:
 Input: arr = [1, 3, 4, 7, 8]
 Output: 4
 Explanation: arr[4] is a peak element because it's greater than or equal to arr[3], which is it's only neighbor
 
Example:
 Input: arr = [1, 5, 2, 6, 6, 3]
 Output: 3
 Explanation: arr[3] is a peak element because it's greater than or equal to arr[2] and greater than or equal to arr[4]
 (other valid outputs would be 1 and 4, because arr[1] and arr[4] are also peak elements)
 
 */

extension Array where Element == Int {
	
	// Time coplexity O(n)
	// Space complexity 0(1)
	func findIndex() -> Int? {
		for i in 0..<self.count {
			if i == (self.count - 1) {
				print("last")
				if self[i] >= self[i - 1] {
					return i
				}
			} else if i == 0 {
				print("first")
				if self[i] >= self[i + 1] {
					return i
				}
			} else if self[i] >= self[i-1] && self[i] >= self[i+1] {
				print("other")
				return i
			}
		}
		return nil
	}
}

[4, 5, 8, 3].findIndex()
[1, 3, 4, 7, 8].findIndex()
[1, 5, 2, 6, 6, 3].findIndex()
