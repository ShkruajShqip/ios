//
//  Endpoint.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/21/24.
//

import Foundation


protocol Endpoint {
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var header: [String: String]? { get }
    var body: Data? { get }
}

extension Endpoint {
    var scheme: String {
        return "http"
    }
    
    var host: String {
        return "localhost"
    }
}
