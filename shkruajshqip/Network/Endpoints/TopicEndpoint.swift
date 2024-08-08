//
//  TopicEndpoint.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 8/5/24.
//

import Foundation

enum TopicEndpoint {
    case getTopicById(id: Int)
    case getEntriesOfTopic(id: Int)
}

extension TopicEndpoint: Endpoint {
    var path: String {
        switch self {
        case .getTopicById(let id):
            return "/api/v1/topics/\(id)"
        case .getEntriesOfTopic(let id):
            return "/api/v1/topics/\(id)/entries"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getTopicById, .getEntriesOfTopic:
            return .GET
        }
    }
    
    var header: [String: String]? {
        switch self {
        case .getTopicById, .getEntriesOfTopic:
            return [
                "Content-Type": "application/json"
            ]
        }
    }
    
    var body: Data? {
        switch self {
        case .getTopicById, .getEntriesOfTopic:
            return nil
        }
    }
}
