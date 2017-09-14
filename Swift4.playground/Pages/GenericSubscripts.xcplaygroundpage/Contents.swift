/*
 Generic Subscripts
 */

import Foundation

class SampleClass
{
    fileprivate var dict: [String:Any]

    init(dict: [String:Any])
    {
        self.dict = dict
    }

    subscript<T>(key: String) -> T?
    {
        return dict[key] as? T
    }
}

let sample = SampleClass(dict: ["name": "Berlin", "country": "de", "population": 3_500_500])
let name : String? = sample["name"]
let country: String? = sample["country"]
let popul: Int? = sample["population"]

