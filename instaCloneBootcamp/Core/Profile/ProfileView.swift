//
//  ProfileView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 16.07.2024.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing:1),// 3 tane sütun yaptık
        .init(.flexible(), spacing:1),
        .init(.flexible(), spacing:1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack{
                    //HEADER
                    VStack(spacing: 10){// butun yazı vb. hepsinin arasını bir tık actık
                        //Profil Kartı
                        HStack{
                            Image("hasan")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80,height: 80)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)//yuvarlak profil yapıyo resmi
                            Spacer()
                                
                            HStack(spacing:8){
                                UserStatView(value: 3, title: "Gönderi")//bunu component halıne getırerek kodu asırı derecede aazaltmıs olduk
                                UserStatView(value: 467, title: "Takipçi")
                                UserStatView(value: 670, title: "Takip")
                            }
                           
                            
                            
                        }
                        .padding(.horizontal)
                        
                        //İsim ve Açıklama Kısmı
                        VStack(alignment:.leading , spacing: 4){
                            Text("Hasan Hüseyin Kılıç")
                                .font(.footnote)//küçülttü
                                .fontWeight(.semibold)//yazıyı kalın yaptı
                            
                            Text("Merhaba, Bu bir developerım!")
                                .font(.footnote)
                            
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)// bunuda yazmamız gerekıyor sebebı ıse yatay genıslık ekran kadar olsun ve soldan baslatsın
                        .padding(.horizontal)//sadece yanlardan padding ver
                        
                        //Edit Profile BUtonu
                        Button {
                            
                        } label: {
                            Text("Edit Profil")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .frame(width: 360,height: 32)
                                .foregroundStyle(Color("buttonTextColor"))
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(.gray,lineWidth:1)//stroke ise içinin rengini siliyo dis cerceve yapıyo sadece
                                    
                                
                                )

                        }
                        Divider()

                    }
                    //POSTS
                 
                    LazyVGrid(columns: gridItems, spacing: 1){
                        ForEach(0...10, id:\.self){ index in
                            Image("hasan")
                                .resizable()
                                .scaledToFill()
                        }
                    }
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
    ProfileView()
}
