//
//  SearchView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 18.07.2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack{
                    ForEach(User.MOCK_USER){ user in //mock user ornek data sayısı kadar olusturdu
                        NavigationLink(value: user) {//tıkladıgımızda o linke gitsin diye sarmaladık
                            HStack{
                                Image(user.profileImageUrl ?? "") //bos olabilir bossa mocktakılerı ver
                            
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40,height: 40)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                VStack(alignment:.leading){
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    Text(user.fullname ?? "")
                                        .foregroundStyle(Color("buttonTextColor"))
                                        .font(.footnote)
                                    
                                }
                                .font(.footnote)
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                     
                        
                    }
                }
                .searchable(text: $searchText,prompt: "Search...")//bu metot yukarıda arama butonu yapıyo bındıng verı olarak searchtext gırdık ve promp  yerıde boısta ıken ne yazsın dıye
            }
            
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
