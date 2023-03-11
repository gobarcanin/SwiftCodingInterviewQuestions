/*
 FIRST REPEATING CHARACTER
 
 Given a string str, create a function that returns the first repeating character.
 If such character doesn't exist, return the null character '\0'.
 
*/

import Foundation

public extension String {
	
	//Time complexity O(n2)
	//Space complexity O(1)
	func find() -> Character {
		for i in 1..<self.count {
			for j in 0..<i {
				if self[i] == self[j] {
					print("Found character: \(self[i])")
					return self[j]
				}
			}
		}
		return "\0"
	}
	
	//Time complexity O(n)
	//Space complexity O(n)
	func fasterFind() -> Character {
		var dictionary: [Character: Bool] = [:]
		for char in self {
			if dictionary[char] != nil {
				print("Found character: \(char)")
				return char
			} else {
				dictionary.updateValue(true, forKey: char)
			}
		}
		return "\0"
	}
}

extension StringProtocol {
	subscript(_ offset: Int) -> Element {
		self[index(startIndex, offsetBy: offset)]
	}
}

"inside code".find()
"programming".find()
"abcd".find()
"abba".find()

"inside code".fasterFind()
"programming".fasterFind()
"abcd".fasterFind()
"abba".fasterFind()
