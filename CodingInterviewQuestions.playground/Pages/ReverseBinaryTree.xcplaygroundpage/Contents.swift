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
 */

let four = Node(value: 4)
let five = Node(value: 5)
let six = Node(value: 6)
let seven = Node(value: 7)

let two = Node(value: 2, left: four, right: five)
let three = Node(value: 3, left: six, right: seven)

let one = Node(value: 1, left: two, right: three)

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
