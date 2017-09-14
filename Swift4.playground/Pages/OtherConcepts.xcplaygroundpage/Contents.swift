/*
 Other Concepts
 */

import Foundation

//1. private vs. fileprivate in extensions

class Person
{
    private let firstname = "Payal"
    private let lastname = "Gupta"
}

extension Person
{
    func testFunc()
    {
        //print(self.firstname)
    }
}

let person = Person()
person.testFunc()

//2. Multiline string literals - triple quotes

let star = "⭐️"
let introString = """
A long time ago in a galaxy far,
far away....

You could write multi-lined strings
without "escaping" single quotes.

The indentation of the closing quotes
below deside where the text line
begins.

You can even dynamically add values
from properties: \(star)
"""
print(introString)

//3. NSNumber bridging

let num = NSNumber(value: 999)
print(num)
let intNum = num as? UInt8 // Swift 4: nil, Swift 3: 231 : 999 % 2^8 = 231
print(intNum)

//4. swap vs. swapAt - swap in Swift3, swapAt in Swift 4

var array = [1, 2, 3, 4, 5, 6]
array.swapAt(1, 3) //Swift4
print(array)
swap(&array[0], &array[5]) //Swift3
print(array)
