//
//  LoginViewModel.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 25.07.2024.
//

import Foundation

class LoginViewModel:ObservableObject{
    @Published var email = ""
    @Published var password = ""
    
    
    func signIn() async throws{
        try await AuthService.shared.login(withEmail: email, password: password)
    }
    
}
