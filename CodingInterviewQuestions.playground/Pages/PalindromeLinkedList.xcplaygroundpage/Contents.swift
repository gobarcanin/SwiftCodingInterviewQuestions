/*
 Given a linked list of integers list, create a boolean function that checks if it's a palindrome linked list in constant space complexity.
 
 Example:
 Input: list = 1 -> 4 -> 6 -> 5 -> 6 -> 4 -> 1 -> null
 Output: true
 
 Example:
 Input: list = 8 -> 3 -> 1 -> 8 -> null
 Output: false
 
 Example:
 Input: list = 6 -> null
 Output: true
 
 Time complexity O(n)
 Space complexity O(1)
 */

let seven = Node(value: 1)
let six = Node(value: 4, next: seven)
let five = Node(value: 6, next: six)
let four = Node(value: 5, next: five)
let three = Node(value: 6, next: four)
let two = Node(value: 4, next: three)
let one = Node(value: 1, next: two)

let linkedList = LinkedList(head: one)
linkedList.isPalindrome()

let secondFour = Node(value: 5)
let secondThree = Node(value: 6, next: secondFour)
let secondTwo = Node(value: 4, next: secondThree)
let secondOne = Node(value: 1, next: secondTwo)

let secondLinkedList = LinkedList(head: secondOne)
secondLinkedList.isPalindrome()

let thirdOne = Node(value: 6)

let thirdLinkedList = LinkedList(head: thirdOne)
thirdLinkedList.isPalindrome()
