//
//  HTTPRequest.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 7/21/24.
//

import Foundation


protocol HTTPRequest {
    func sendRequest<T: Decodable>(endpoint: Endpoint, responseModel: T.Type) async -> Result<GenericResponse<T>, NetworkError>
}

extension HTTPRequest {
    func sendRequest<T: Decodable>(endpoint: Endpoint, responseModel: T.Type) async ->  Result<GenericResponse<T>, NetworkError> {
        var urlComponents = URLComponents()
        urlComponents.scheme = endpoint.scheme
        urlComponents.host = endpoint.host
        urlComponents.port = 8080
        urlComponents.path = endpoint.path
        
        guard let url = urlComponents.url else {
            return .failure(.custom(message: "Invalid URL"))
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue
        request.allHTTPHeaderFields = endpoint.header
        
        if let body = endpoint.body {
            request.httpBody = body
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request, delegate: nil)
            guard let response = response as? HTTPURLResponse else {
                return .failure(.custom(message: "No Data"))
            }
            
            switch response.statusCode {
            case 200...299:
                guard let decodeResponse = try? JSONDecoder().decode(GenericResponse<T>.self, from: data) else {
                    print(response.statusCode)
                    return .failure(.decodingError)
                }
                return .success(decodeResponse)
            case 401:
                return .failure(.custom(message: "Unauthorized"))
            default:
                print(response.statusCode)
                let jsonData = String(data: data, encoding: .utf8)
                print(String(data: endpoint.body!, encoding: .utf8))
                print(jsonData)
                return .failure(.custom(message: "Unexpected error"))
            }
        } catch {
            return .failure(.custom(message: "Unknown error"))
        }
    }
}
