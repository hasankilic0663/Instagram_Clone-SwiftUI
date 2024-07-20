//
//  FeedView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 16.07.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack{//ramden yemıyo ekranda olmadıgı surece
                    ForEach(Post.MOCK_POST){post in
                        FeedCell(post: post)
                        
                    }
                }
            }
            .navigationTitle("Feed")// title baslık verdi
            .navigationBarTitleDisplayMode(.inline )//baslıgı ortaladı
            .toolbar{
                ToolbarItem( placement: .topBarLeading) {
                    Image("instagram")
                        
                        .resizable()
                        .frame(width: 100,height: 35)
                        
                }
                ToolbarItem( placement: .topBarTrailing) {//ust bar butonu eklıyo sag tarfa dm butonu ekleyecez
                    Image(systemName: "paperplane")
                        .imageScale(.large)//buton boyutu
                    
                    
                }
                
            }
        }
    }
}

#Preview {
    FeedView()
}
