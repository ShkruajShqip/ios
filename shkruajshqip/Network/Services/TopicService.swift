//
//  TopicService.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 8/5/24.
//

import Foundation


struct TopicService: HTTPRequest, TopicServiceable {
    func getTopicById(id: Int) async -> Result<GenericResponse<TopicModel>, NetworkError> {
        return await sendRequest(endpoint: TopicEndpoint.getTopicById(id: id), responseModel: TopicModel.self)
    }
    
    func getEntriesOfTopic(id: Int) async -> Result<GenericResponse<EntryModel>, NetworkError> {
        return await sendRequest(endpoint: TopicEndpoint.getEntriesOfTopic(id: id), responseModel: EntryModel.self)
    }
    
    
}
