//
//  CurrentUserProfileView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 20.07.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing:1),// 3 tane sütun yaptık
        .init(.flexible(), spacing:1),
        .init(.flexible(), spacing:1)
    ]
    let user : User
    var posts: [Post]{
        return Post.MOCK_POST.filter({ $0.user?.username == user.username})
    }//öğenin userının ussername ı b u sayfadakı userın usernameıne esıt olanları döndür . bunun amacı kullanıcı adının postlarını getir sadece
    var body: some View {
        NavigationStack {
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
        }
    }
}


#Preview {
    CurrentUserProfileView(user: User.MOCK_USER[0])
}
