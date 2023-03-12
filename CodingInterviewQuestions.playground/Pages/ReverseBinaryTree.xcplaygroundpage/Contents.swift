/*
 Given a binary tree of integers root, create a function that reverses it left to right in-place.
 ┌───────────────────────────────────────────────┐
 │                                               │
 │   I           1                      1        │
 │                        ────────►              │
 │   II       2       3              3       2   │
 │                                               │
 │  III     4   5   6   7          7   6   5   4 │
 │                                               │
 └───────────────────────────────────────────────┘
 
 Time complexity O(n)
 Space complexity O(h)  h--> height of tree
 */

let four = BinaryNode(value: 4)
let five = BinaryNode(value: 5)
let six = BinaryNode(value: 6)
let seven = BinaryNode(value: 7)

let two = BinaryNode(value: 2, left: four, right: five)
let three = BinaryNode(value: 3, left: six, right: seven)

let one = BinaryNode(value: 1, left: two, right: three)

print("I :\(one.value)")
print("II(L) :\(one.left!.value)")
print("II(R) :\(one.right!.value)")
print("III(LL) :\(one.left!.left!.value)")
print("III(LR) :\(one.left!.right!.value)")
print("III(RL) :\(one.right!.left!.value)")
print("III(RR) :\(one.right!.right!.value)")

one.reverseNodes()

print("I :\(one.value)")
print("II(L) :\(one.left!.value)")
print("II(R) :\(one.right!.value)")
print("III(LL) :\(one.left!.left!.value)")
print("III(LR) :\(one.left!.right!.value)")
print("III(RL) :\(one.right!.left!.value)")
print("III(RR) :\(one.right!.right!.value)")
