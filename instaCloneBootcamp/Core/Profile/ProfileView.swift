//
//  ProfileView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 16.07.2024.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
//    private let gridItems: [GridItem] = [
//        .init(.flexible(), spacing:1),// 3 tane sütun yaptık
//        .init(.flexible(), spacing:1),
//        .init(.flexible(), spacing:1)
//    ] postgridview e tasıdık
    
    var posts: [Post]{
        return Post.MOCK_POST.filter({ $0.user?.username == user.username})
    }//öğenin userının ussername ı b u sayfadakı userın usernameıne esıt olanları döndür
    
//    private let imageDimension : CGFloat = (UIScreen.main.bounds.width / 3) - 1
    //ekranı olcuyoruz
    var body: some View {
        //NavigationStack {
            ScrollView {
                VStack{
                    //HEADER
                    ProfileHeaderView(user: user)
                    //POSTS
                 
                    PostGridView(posts: posts)
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)//ust barı ortaladı
            .toolbar{
                ToolbarItem(placement:  .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(Color("buttonTextColor"))
                    }

                }
            }

        //}
        
            
            
    }
}

#Preview {
    ProfileView(user: User.MOCK_USER[0])
}
