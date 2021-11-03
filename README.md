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
