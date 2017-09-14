/*
 Key Paths - accessing object properties with key paths
 
 Notes:
 1. Reference to properties without actually accessing the underlying data held by the property
 2. keyPath subscript - available on every type by default.
 */

import Foundation

class ProjectEntity: Codable
{
    let projectID: String?
    let projectName: String?
    let resCom: String?
    
    init(id: String?, name: String?, resCom: String?)
    {
        self.projectID = id
        self.projectName = name
        self.resCom = resCom
    }
}

class ProjectDetail
{
    var projectLocality: String?
    let projectEntity: ProjectEntity?
    
    init(locality: String?, entity: ProjectEntity?)
    {
        self.projectLocality = locality
        self.projectEntity = entity
    }
}

let entity = ProjectEntity(id: "A123", name: "Mahagun Moderne", resCom: "R")
let detail = ProjectDetail(locality: "Sector-67, Noida", entity: entity)

//Accessing properties using Key Paths
let keyPath1 =  \ProjectDetail.projectLocality
print(detail[keyPath: keyPath1])

let keyPath2 =  \ProjectDetail.projectEntity?.projectName
print(detail[keyPath:  keyPath2])

//Changing property values using Key Paths
detail[keyPath: keyPath1] = "Greater Noida"
print(detail.projectLocality)
