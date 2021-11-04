# Binary Search Tree Lab

## Learning Goals

- Implement an `#insert` method in the `BinarySearchTree` class
- Implement a `#search` method in the `BinarySearchTree` class

## Introduction

In the previous lessons, you learned about different types of `Tree` structures
and different methods for traversing them. In this lab, you'll get some practice
working with a `BinarySearchTree`. As a reminder, a **binary tree** is a special
kind of tree in which each node has at most two child nodes, referred to as the
**left** child and **right** child.

![binary tree](https://curriculum-content.s3.amazonaws.com/phase-4/phase-4-data-structures-tree/binary-tree.png)

Each node in a binary tree has three attributes: a `value`, and references to
its `left_child` and `right_child`. If a node doesn't have either or both of
these child nodes, the attributes will be set to `nil`.

A **binary search tree (BST)** is a special kind of a binary tree in which the
value of a node's left child (if it has one) must be less than the value of the
node itself, and the value of its right child (if it has one) must be greater
than the value of the node itself:

![binary search tree](https://curriculum-content.s3.amazonaws.com/phase-4/phase-4-data-structures-tree/binary-search-tree.png)

Fork and clone this lab, then take a look at the files in the `lib` folder. Note
that we have provided you with the code for the `BinarySearchTree` and `Node`
classes. You will be doing all of your coding in `lib/binary_search_tree.rb`.
You can run the tests at any point using `learn test` to check your work.

## Instructions

To pass the tests, you will need to write the following methods:

- `BinarySearchTree#search`: this method should take a target value as input and
  search for the `Node` with that value in the `Tree` instance. The method
  should return the `Node` with the target value if one is found and `nil`
  otherwise.

- `BinarySearchTree#insert`: this method should take a value as input, create a
  new `Node` with that value, and insert it into the `Tree` instance. The method
  should insert nodes regardless of the tree's existing size, and should not
  allow duplicate nodes to be inserted. If the `Node` was inserted successfully,
  the method should return that `Node`. Otherwise, the method should return
  `nil`.

**Note:** these methods can be coded using either iteration or recursion; you
are free to use whichever approach you’re comfortable with.

**Hint:**

For both methods, you’ll start at the root and compare the input value to the
root’s value. Depending on the result of the comparison, you’ll either be done,
or you’ll continue to either the left or right child, where you’ll repeat the
process.

Some tips to get it working:

- You will need to use a variable to keep track of which node you’re currently
  checking.
- For the `#search` method, you will want to continue looping until you’ve
  either found the target node or you’ve run out of nodes to check. For the
  `#insert` method, you will want to continue looping until you’ve either
  inserted the new node or found that there is already a node in the tree that
  has the target value.
- Recall that you can use `while true` to continue looping until a `return`
  statement is executed.

## Resources

- [Wikipedia: Binary Search Tree](https://en.wikipedia.org/wiki/Binary_search_tree)
