//
//  AuthEndpoint.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/21/24.
//

import Foundation

enum AuthEndpoint {
    case register(body: RegisterRequest)
    case login(body: LoginRequest)
}

extension AuthEndpoint {
    var path: String {
        switch self {
        case .register:
            return "api/v1/auth/register"
        case .login:
            return "/api/v1/auth/login"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .register:
            return .POST
        case .login:
            return .POST
        }
    }
    
    var header: [String: String]? {
        switch self {
        case .register:
            return [
                "Content-Type": "application/json"
            ]
        case .login:
            return [
                "Content-Type": "application/json"
            ]
        }
    }
    
    var body: Data? {
        switch self {
        case .register(let body):
            return try? JSONSerialization.data(withJSONObject: body)
        case .login(let body):
            return try? JSONSerialization.data(withJSONObject: body)
        }
    }
}
