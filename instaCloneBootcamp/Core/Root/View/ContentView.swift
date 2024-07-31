//
//  ContentView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 16.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registerViewModel = RegisterViewModel()
    var body: some View {
        Group{
            if viewModel.userSession == nil {
                
                LoginView()
                    .environmentObject(registerViewModel) //environment tanımladık ana sayfaya
                
                // tanımlanmamıs durumda ıse sen gel login işlemi yap
            } else if let currentUser = viewModel.currentUser{// eger varsada usersessıon dırek maınden baslat
                MainTabView(user: currentUser)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
