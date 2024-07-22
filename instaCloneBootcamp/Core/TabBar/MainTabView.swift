//
//  MainTabView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 16.07.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem {
                    Image(systemName: "house")// ikon donduruyo. bu ıkonlar sf sembol uygulaması var ordan gelıyor
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            Text("Notifactions")
                .tabItem {
                    Image(systemName: "heart")
                }
            CurrentUserProfileView(user: User.MOCK_USER[0])
                .tabItem {
                    Image(systemName: "person")
                }
        }
        //.accentColor(Color.primary)// hangı butonda ıse tıklı ıse yanı onu koyu siyah yaptı. orjinal renk ise mavi
        .accentColor(Color("TabBarItemColor")) // Assets klasörüne ozel renk olusturduk dark ve lıght mod renklerı için
    }
}

#Preview {
    MainTabView()
}
