//
//  AuthServiceable.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 8/8/24.
//

import Foundation


protocol AuthServiceable {
    func register(body: RegisterRequest) async -> Result<GenericResponse<String>, NetworkError>
    func login(body: LoginRequest) async -> Result<GenericResponse<String>, NetworkError>
}
