//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*
 
 Suppose you have a random list of people standing in a queue. Each person is described by a pair of integers (h, k), where h is the height of the person and k is the number of people in front of this person who have a height greater than or equal to h. Write an algorithm to reconstruct the queue.

Note:
The number of people is less than 1,100.


Example

Input:
[[7,0], [4,4], [7,1], [5,0], [6,1], [5,2]]

Output:
[[5,0], [7,0], [5,2], [6,1], [4,4], [7,1]]
 
 Reference - https://leetcode.com/problems/queue-reconstruction-by-height/description/
 */

//Time complexity - O(n * n)
//Space Complexity - O(n)

class Solution {
    func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
        var input = people
        var result = [[Int]]()
        if(people.count == 0) {
            return result
        }
        input.sort{
            (a:[Int],b:[Int]) in people
            return (a[0] != b[0]) ? a[0] > b[0] : a[1] < b[1]
        }
        for person in input {
            result.insert(person, at: person[1])
        }
        return result
    }
}
