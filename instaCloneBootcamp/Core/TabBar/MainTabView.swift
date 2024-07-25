//
//  MainTabView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 16.07.2024.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    
    var body: some View {
        TabView(selection: $selectedIndex){
            FeedView()
                .onAppear(){//üzerine tıklandıgında anlamı tasıyo
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")// ikon donduruyo. bu ıkonlar sf sembol uygulaması var ordan gelıyor
                }
                .tag(0)
            SearchView()
                .onAppear(){//üzerine tıklandıgında anlamı tasıyo
                    selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            UploadPostView(tabIndex: $selectedIndex )
                .onAppear(){//üzerine tıklandıgında anlamı tasıyo
                    selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "plus.square")
                }
                .tag(2)
            Text("Notifactions")
                .onAppear(){//üzerine tıklandıgında anlamı tasıyo
                    selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "heart")
                }
                .tag(3)
            CurrentUserProfileView(user: User.MOCK_USER[0])
                .onAppear(){//üzerine tıklandıgında anlamı tasıyo
                    selectedIndex = 4
                }
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(4)
        }
        //.accentColor(Color.primary)// hangı butonda ıse tıklı ıse yanı onu koyu siyah yaptı. orjinal renk ise mavi
        .accentColor(Color("TabBarItemColor")) // Assets klasörüne ozel renk olusturduk dark ve lıght mod renklerı için
    }
}

#Preview {
    MainTabView()
}
