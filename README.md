# Binary Search Tree Lab

## Learning Goals

- Implement an `#insert` method in the `BinarySearchTree` class
- Implement a `#search` method in the `BinarySearchTree` class

## Introduction

In the previous lessons, you learned about different types of `Tree` structures
and different methods for traversing them. In this lab, you'll get some practice
working with a `BinarySearchTree`.

Fork and clone this lab, then take a look at the files in the `lib` folder. Note
that we have provided you with the code for the `BinarySearchTree` and `Node`
classes. You will be doing all of your coding in `lib/binary_search_tree.rb`.
You can run the tests at any point using `learn test` to check your work.

## Instructions

To pass the tests, you will need to write the following methods:

- `BinarySearchTree#insert`: this method should take a value as input, create a
  new `Node` with that value, and insert it into the `Tree` instance. The method
  should insert nodes regardless of the tree's existing size, and should not
  allow duplicate nodes to be inserted. The method should return the `Tree`
  instance itself if the `Node` was inserted and `nil` otherwise.

- `BinarySearchTree#search`: this method should take a target value as input and
  search for the `Node` with that value in the `Tree` instance. The method
  should return the `Node` with the target value if one is found and `nil`
  otherwise.
