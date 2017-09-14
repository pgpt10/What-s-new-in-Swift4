/*
 Codable - serialize and deserialize classes, structs and enums
 
 Links:
 
 1. In Swift3 - implementing NSObject and NSCoding, not available for struct and enums
 2. In Swift4 - https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types
 3. Useful link for understanding - https://medium.com/monitisemea/swift-4s-codable-one-last-battle-for-serialization-30ceb3ccb051
 
 Notes:
 
 1. For encoding - conform to Encodable
 2. For decoding - conform to Decodable
 3. For both - conform to Codable
 4. To make a type Codable - declare its properties using types that are already Codable.
 5. Built-in Codable types - String, Int, Double, Data, URL
 6. Array, Dictionary, Optional are Codable if they contain Codable types
 7. Choose properties to encode and decode - enum CodingKeys: CodingKey
 8. NSKeyedArchiver & NSKeyedUnarchiver also supports Codable
 9. For now you cannot conform to Codable in an extension. It might be available in further releases
 */

import Foundation

class ProjectEntity: Codable
{
    var projectID: String?
    var projectName: String?
    var resCom: String? = "R"
    
    init(id: String?, name: String?, resCom: String?)
    {
        self.projectID = id
        self.projectName = name
        self.resCom = resCom
    }
    
    enum CodingKeys: String, CodingKey
    {
        case projectID = "ID" //ID is used instead of projectID
        case projectName
        //resCom omitted, therefore given a default value
    }
}

let project = ProjectEntity(id: "A123", name: "Mahagun Moderne", resCom: "R")

//Serialization
let data = try JSONEncoder().encode(project)
let jsonString = String(data: data, encoding: .utf8)
print(jsonString)

//Deserialization
let project1 = try JSONDecoder().decode(ProjectEntity.self, from: data)
print(project1.projectID)

/*Query
 
 Omit properties from the CodingKeys enumeration if they won't be present when decoding instances, or if certain properties shouldn't be included in an encoded representation. A property omitted from CodingKeys needs a default value in order for its containing type to receive automatic conformance to Decodable or Codable.
 
 Archiving and Unarchiving
 */
