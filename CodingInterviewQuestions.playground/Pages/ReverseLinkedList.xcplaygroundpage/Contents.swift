/*
 Given a linked list of integers list, create a function that reverses it in-place without using an additional data structure.

Example:
 Input: list = 5 -> 3 -> 6 -> 4 -> 7 -> null
 Output: 7 -> 4 -> 6 -> 3 -> 5 -> null

Example:
 Input: list = 1 -> 2 -> 3 -> null
 Output: 3 -> 2 -> 1 -> null

 Time complexity O(n)
 Space complexity O(n) --> number of nodes
*/

let five = Node(value: 7)
let four = Node(value: 4, next: five)
let three = Node(value: 6, next: four)
let two = Node(value: 3, next: three)
let one = Node(value: 5, next: two)

let linkedList = LinkedList(head: one)

linkedList.reverseList()
