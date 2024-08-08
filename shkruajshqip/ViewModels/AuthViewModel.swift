//
//  AuthViewModel.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 8/8/24.
//

import Foundation


class AuthViewModel: ObservableObject {
    @Published var registerResponse: GenericResponse<String>?
    
    
    func register(body: RegisterRequest) async {
        Task(priority: .background) {
           let register = await AuthService().register(body: body)
            switch register {
            case .success(let response):
                DispatchQueue.main.async {
                    self.registerResponse = response
                    print(response)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
