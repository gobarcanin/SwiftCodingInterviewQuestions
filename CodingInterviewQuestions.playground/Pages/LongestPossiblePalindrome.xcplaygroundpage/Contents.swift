/*
 Given a string str made of alphabetical letters only,
 create a function that returns the length of the longest palindrome string that can be made from letters of str
 
Example:
 Input: str = "abbaba"
 Output: 5
 Explanation: one of the longest palindromes that can be made is "baaab", its length is 5
 
Example:
 Input: str = "abbaaa"
 Output: 6
 Explanation: one of the longest palindromes that can be made is "baaaab", its length is 6
 
Example:
 Input: str = "abdccdceeebebc"
 Output: 13
 Explanation: one of the longest palindromes that can be made is "eedccbabccdee", its length is 13
 */

extension String {
	
	// Time complexity O(n)
	// Space complexity O(1)
	func longestPalindrome() -> Int {
		var table: [Character: Int] = [:]
		self.forEach {
			if table[$0] != nil {
				table[$0]! += 1
			} else {
				table[$0] = 1
			}
		}
		var result = 0
		table.keys.forEach {
			if let value = table[$0] {
				if value % 2 == 0 {
					result += value
				} else {
					result += (value - 1)
				}
			}
		}
		if result < self.count {
			result += 1
		}
		return result
	}
	
}

"abbaaa".longestPalindrome()
"abbaba".longestPalindrome()
"abdccdceeebebc".longestPalindrome()
