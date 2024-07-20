//
//  Post.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 20.07.2024.
//

import Foundation

struct Post: Identifiable,Hashable,Codable{
    
    
    let id: String
    let ownerUid: String
    let caption : String
    var likes : Int
    let imageUrl : String
    let timestamp : Date
    var user: User? //nullable olsunki kızmasın
    
}

extension Post{
    static var MOCK_POST: [Post] = [
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "Bugun gunlerden cumartesi ve İstanbula yolculuk için son 11 gün", likes: 27, imageUrl: "maymun-1", timestamp: Date(), user: User.MOCK_USER[0]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "Bugun gunlerden cumartesi ve İstanbula yolculuk için son 11 gün", likes: 63, imageUrl: "maymun-2", timestamp: Date(), user: User.MOCK_USER[1]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "Bugun gunlerden cumartesi ve İstanbula yolculuk için son 11 gün", likes: 6, imageUrl: "maymun-3", timestamp: Date(), user: User.MOCK_USER[2]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "Bugun gunlerden cumartesi ve İstanbula yolculuk için son 11 gün", likes: 41, imageUrl: "maymun-4", timestamp: Date(), user: User.MOCK_USER[3])
        
    
    ]
}
