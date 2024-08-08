//
//  TopicModel.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/25/24.
//

import Foundation


struct TopicModel: Identifiable, Decodable {
    var id: Int
    var createdOn: String
    var createdBy: String
    var lastModifiedOn: String
    var lastModifiedBy: String
    var title: String
    
    
    
}
