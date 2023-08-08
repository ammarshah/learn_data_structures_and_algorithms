# Big O Notation

### What is Big O notation?

Wikipedia:

> Big O notation is a mathematical notation that describes the limiting behaviour of a function when the argument tends towards a particular value or infinity.

We use Big O to describe the performance of an algorithm and this helps us determine if a given algorithm is scalable or not.

Which basically means, is this algorithm going to scale well as the input grows really large?

### What does this have to do with Data Structures?

Sometimes certain operations can be more or less costly depending on what data structure is used.

For example:

Accessing an array element by its index is super fast but arrays have a fixed length and if you want to constantly add or remove items from them: they have to get resized, and this will get costly as the size of our input grows very large.

So, if that what we need to do then we have to use another data structure called a Linked List.

This data structure can grow or shrink very quickly but accessing a linked list by its index is slow.

So, that's why we need to learn about the Big O notation first before we can talk about various data structures.