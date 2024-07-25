//
//  AuthService.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 25.07.2024.
//

import Foundation
import FirebaseAuth

class AuthService {//authservise bize bir kullanıcı saglayacak bunun ıcın bı publsıhed yapmmaız lazım
    
    
    @Published var userSession : FirebaseAuth.User? // burada uyg actıgımızda uyg logın olup olmadıgıın burdan yardım alarak yapacazü
    
    static let shared = AuthService() // shared diyerek burdakı tum metotlara ve degıskenlere erısebılırız
    
    init() {
        self.userSession = Auth.auth().currentUser//bunun ıcı dolumu bosmu bunu bi kontrol et ve git bunu usersessıona ata hemen
    }
    
    
    func login(withEmail email : String , password : String) async throws{
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            
        }catch{
            print("Failed to log in with error : \(error.localizedDescription)")
        }
    }
    
    func createUser(email : String , password : String , username: String) async throws{
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            
        } catch{
            print("Hata : \(error.localizedDescription)")
            
        }
        
    }
    
    func loadUserData() async throws{ }//bu herhangi birşey almayacak . Cunku auth servısımızle fırebasedekılogin olmus kullanıcıyı bulabılıyorduk
    
    func signout(){
        try? Auth.auth().signOut()
        self.userSession = nil
    }// firebaseden cıkıs yapmıs olacak yanı uygulamadnda cıkıs yapmış olacak
}
