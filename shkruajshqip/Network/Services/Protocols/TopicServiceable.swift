//
//  TopicServiceable.swift
//  shkruajshqip
//
//  Created by Ardi Jorganxhi on 8/5/24.
//

import Foundation


protocol TopicServiceable {
    func getTopicById(id: Int) async -> Result<GenericResponse<TopicModel>, NetworkError>
    func getEntriesOfTopic(id: Int) async -> Result<GenericResponse<EntryModel>, NetworkError>
}
