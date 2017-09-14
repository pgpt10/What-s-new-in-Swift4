/*
 One Sided Ranges - infer start and end indices
 
 Reduce the need to explicitly specify either the start or end index.
 */

import Foundation

var planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

print(planets)

print(planets[0...5])
print(planets[...5]) //no need to specify start index

print(planets[0..<5])
print(planets[..<5]) //no need to specify start index

print(planets[5...]) //no need to specify end index - infinite range

func testFunc(_ number: Int)
{
    switch(number)
    {
    case ...10:
        print("Less than 10")

    case 10...:
        print("More than 10")
        
    default:break
    }
}

testFunc(2)
testFunc(10)
testFunc(200000)


/*Query
 switch(number)
 {
 case ...10:
 print("Less than 10")
 
 case 10...:
 print("More than 10")    
 }
 
 The above switch must be exhaustive. But if default not used, it gives error.
 */
