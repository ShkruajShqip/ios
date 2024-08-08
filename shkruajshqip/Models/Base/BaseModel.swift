//
//  BaseModel.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 8/5/24.
//

import Foundation


class BaseModel: Codable {
    var createdOn: Date
    var createdBy: String
    var lastModifiedOn: Date
    var lastModifiedBy: String
    
    init(createdOn: Date, createdBy: String, lastModifiedOn: Date, lastModifiedBy: String) {
        self.createdOn = createdOn
        self.createdBy = createdBy
        self.lastModifiedOn = lastModifiedOn
        self.lastModifiedBy = lastModifiedBy
    }
}
