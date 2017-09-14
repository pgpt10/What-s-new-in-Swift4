import Foundation

protocol Named
{
    var name: String { get }
}
protocol Aged
{
    var age: Int { get }
}
class Location
{
    var latitude: Double
    var longitude: Double
    init(latitude: Double, longitude: Double)
    {
        self.latitude = latitude
        self.longitude = longitude
    }
}

class City: Location, Named, Aged
{
    var name: String
    var age: Int
    
    init(name: String, age: Int, latitude: Double, longitude: Double)
    {
        self.name = name
        self.age = age
        super.init(latitude: latitude, longitude: longitude)
    }
}

func beginConcert(in location: Location & Named & Aged)
{
    print("Hello, \(location.name)!")
}

let seattle = City(name: "Seattle", age: 21, latitude: 47.6, longitude: -122.3)
beginConcert(in: seattle)
