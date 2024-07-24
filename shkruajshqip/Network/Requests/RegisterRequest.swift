//
//  RegisterRequest.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/21/24.
//

import Foundation


struct RegisterRequest: Codable {
    
    var username: String
    var name: String
    var surname: String
    var email: String
    var password: String
}
