//
//  GenericResponse.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 8/5/24.
//

import Foundation



struct GenericResponse<T: Decodable>: Decodable {
    var success: Bool
    var timestamp: String
    var message: String
    var data: T?
    
    
    
}
