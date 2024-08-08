//
//  TopicViewModel.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 8/8/24.
//

import Foundation


class TopicViewModel: ObservableObject {
     var topicResponse: GenericResponse<TopicModel>?
    @Published var topic: TopicModel?
    
    func getTopicById(id: Int) async {
        Task(priority: .background) {
            let topic = await TopicService().getTopicById(id: id)
            switch topic {
            case .success(let response):
                DispatchQueue.main.async {
                 self.topic = response.data
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
