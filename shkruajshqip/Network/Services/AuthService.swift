//
//  AuthService.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 8/8/24.
//

import Foundation


struct AuthService: HTTPRequest, AuthServiceable {
    func register(body: RegisterRequest) async -> Result<GenericResponse<String>, NetworkError> {
        return await sendRequest(endpoint: AuthEndpoint.register(body: body), responseModel: String.self)
    }
    
    func login(body: LoginRequest) async -> Result<GenericResponse<String>, NetworkError> {
        return await sendRequest(endpoint: AuthEndpoint.login(body: body), responseModel: String.self)
    }
    
    
}
