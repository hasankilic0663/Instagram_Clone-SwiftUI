//
//  AuthService.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 25.07.2024.
//

import Foundation
import FirebaseAuth
import Firebase
import FirebaseFirestoreSwift

class AuthService {//authservise bize bir kullanıcı saglayacak bunun ıcın bı publsıhed yapmmaız lazım
    
    
    @Published var userSession : FirebaseAuth.User? // burada uyg actıgımızda uyg logın olup olmadıgıın burdan yardım alarak yapacazü
    @Published var currentUser : User?
    
    static let shared = AuthService() // shared diyerek burdakı tum metotlara ve degıskenlere erısebılırız
    
    init() {
        
        Task { try await loadUserData()}
    }
    
    @MainActor
    func login(withEmail email : String , password : String) async throws{
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await loadUserData()
        }catch{
            print("Failed to log in with error : \(error.localizedDescription)")
        }
    }
    @MainActor
    func createUser(email : String , password : String , username: String) async throws{
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            await uploadUserData(uid: result.user.uid,username:  username, email: email)
            
        } catch{
            print("Hata : \(error.localizedDescription)")
            
        }
        
    }
    
    func uploadUserData(uid: String,username:String , email: String) async{
     
        let user = User(id: uid, username: username, email: email)
        guard let encodedUser = try? Firestore.Encoder().encode(user) else { return }//anlamadım
        
        try? await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)  //collecıon olusturdu yoksa ve içinde dokumantasyon var ve encodeduser ı aekle datayaa 
    }
    @MainActor
    func loadUserData() async throws{
        self.userSession = Auth.auth().currentUser//bunun ıcı dolumu bosmu bunu bi kontrol et ve git bunu usersessıona ata hemen
        guard  let  currenUid = Auth.auth().currentUser?.uid else{return}//currentuid alabılmeyı yapıyo alamazsa return et
        let snapshot = try await Firestore.firestore().collection("users").document(currenUid).getDocument()//artık snapshot ıcerısınde bu ıdye sahıp dokumantasyonun olacak
        //try ve await uyg cokmesını engeller try dene . await ise bekleme
    
        self.currentUser = try? snapshot.data(as: User.self) // dataya ulas modelın kednısıne ulas
        
    }//bu herhangi birşey almayacak . Cunku auth servısımızle fırebasedekılogin olmus kullanıcıyı bulabılıyorduk
    
    
    func signout(){
        try? Auth.auth().signOut()
        self.userSession = nil
        self.currentUser = nil
    }// firebaseden cıkıs yapmıs olacak yanı uygulamadnda cıkıs yapmış olacak
}
