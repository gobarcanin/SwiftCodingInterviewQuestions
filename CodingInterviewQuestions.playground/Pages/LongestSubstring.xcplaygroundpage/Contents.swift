/*
 Given a string str made of alphabetical letters only, create a function that returns
 the length of the longest substring without repeating characters.
 
 Example
 Input: str = "abcdbeghef"
 Output: 6
 Explanation: the longest substring without repeating characters is "cdbegh", its length is 6
 
 Example
 Input: str = "aaaaa"
 Output: 1
 Explanation: the longest substring without repeating characters is "a", its length is 1
 
 Input: str = "eddy"
 Output: 2
 Explanation: the longest substring without repeating characters is "ed" (or "dy"), its length is 2
 */

extension String {
	
	// Time coplexity O(n2)
	// Space complexity O(n)
	func longestNonRepeating() -> Int {
		var longest = 0
		var temp: [Character] = []
		for i in 0..<self.count {
			temp = []
			for j in i..<self.count {
				if temp.contains(where: { $0 == self[j] }) {
					longest = Swift.max(temp.count, longest)
				} else {
					temp.append(self[j])
				}
			}
		}
		
		return longest
	}
}

extension StringProtocol {
	subscript(_ offset: Int) -> Element {
		self[index(startIndex, offsetBy: offset)]
	}
}

"abcdbeghef".longestNonRepeating()
"aaaaa".longestNonRepeating()
"eddy".longestNonRepeating()
