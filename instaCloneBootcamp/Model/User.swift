//
//  User.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 20.07.2024.
//

import Foundation

struct User: Identifiable, Hashable,Codable{//Identifiable diyerek foreach dongusunde id belirtmek durumunda kalmıyoz oto id alıyo. codable ıse veri donusmumu saglauyacak . bir JSON Nesnesi gibi
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname : String?
    var bio: String?
    let email : String
    //mock data - henuz bır ınternetle erısım olmadıgında sankıı bır data varmıs gıbı davranmak ıcın kruguladıgımız yapıpdır. örnek data anlamını tasıyo
}

extension User{
    static var MOCK_USER : [User] = [
       
        .init(id: UUID().uuidString, username: "monkey1", profileImageUrl: "maymun-1", fullname: "Monkey1", bio: "LOREM ipsum lorem", email: "monkey1@gmail.com"),
        .init(id: UUID().uuidString, username: "monkey2", profileImageUrl: "maymun-2", fullname: "Monkey2", bio: "LOREM ipsum lorem", email: "monkey2@gmail.com"),
        .init(id: UUID().uuidString, username: "monkey3", profileImageUrl: "maymun-3", fullname: "Monkey3", bio: "LOREM ipsum lorem", email: "monkey3@gmail.com"),
        .init(id: UUID().uuidString, username: "monkey4", profileImageUrl: "maymun-4", fullname: "Monkey4", bio: "LOREM ipsum lorem", email: "monkey4@gmail.com")
        
    
    ]
}
