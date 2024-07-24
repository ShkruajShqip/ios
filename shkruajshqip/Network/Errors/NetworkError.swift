//
//  NetworkError.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/21/24.
//

import Foundation


enum NetworkError: Error {
    
    case invalidURL
    case noData
    case decodingError
    case custom(message: String)
}
