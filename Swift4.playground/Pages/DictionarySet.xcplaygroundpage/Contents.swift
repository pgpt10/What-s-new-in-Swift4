/*
 Dictionary and Set
 */

import Foundation

//1. Dictionary from array of tuples--------------

let tupleArray = [("Monday", 30),  ("Tuesday", 25),  ("Wednesday", 27),  ("Thursday", 20),  ("Friday", 24),  ("Saturday", 22),  ("Sunday", 26)]
let dictionary1 = Dictionary(uniqueKeysWithValues: tupleArray) //Every key must be unique in order to use uniqueKeysWithValues
print(dictionary1)

let arr1 = ["One", "Two", "Three", "Four", "Five"]
let arr2 = [11, 12, 13, 14, 15]
let dictionary2 = Dictionary(uniqueKeysWithValues: zip(arr1, arr2))
print(dictionary2)

let dictionary3 = Dictionary(uniqueKeysWithValues: zip(100..., arr1))
print(dictionary3)


//2. Duplicate Key Resolution--------------
let arr4 = ["One", "Two", "Three", "One"]
var dictionary4 = Dictionary(zip(arr4, 1...), uniquingKeysWith: { return $0 + $1 })
print(dictionary4)


//3. Merging duplicates to existing dictionary--------------
let arr5 = [("Two", 100), ("Three", 100)]
dictionary4.merge(arr5, uniquingKeysWith: { return $0 + $1 })
print(dictionary4)
//merge(_: uniquingKeysWith:) - modify the original dictionary
//merging(_: uniquingKeysWith:) - returns a new dictionary


//4. Default value subscript--------------
var dictionary5 = ["a": 1, "b": 2]
print(dictionary5["c", default: 10]) //avoid nil coalescing operator: dictionary5["c"] ?? 0
dictionary5["a", default: 10] += 5
dictionary5["c", default: 10] += 5 //adds "c":15
print(dictionary5)


//5. map and filter - dictionary/set - In swift 3 it returned array - In swift 4 it returns dictionary--------------
var dictionary6 = ["a": 1, "b": 2, "c": 2]
print(dictionary6.mapValues({$0 * 2}))
print(dictionary6.filter({$0.1 == 2}))


//6. Grouping dictionary--------------
let scores = [7, 20, 5, 30, 100, 40, 200]
let dictionary7 = Dictionary(grouping: scores, by:{String($0).count})
print(dictionary7)


//7. Dictionary/Set with an initial capacity--------------
var dictionary8: Dictionary<String, Int> = Dictionary(minimumCapacity: 2) //Creates a dictionary with at least the given number of elements worth of buffer.
dictionary8["a"] = 1
dictionary8["b"] = 2
dictionary8["c"] = 3
print(dictionary8)

/*Query
 Dictionary(minimumCapacity: 2) - Not understood
 capacity, reserveCapacity - Not understood
 */
