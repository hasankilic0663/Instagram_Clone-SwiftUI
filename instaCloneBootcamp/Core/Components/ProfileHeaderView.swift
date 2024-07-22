//
//  ProfileHeaderView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 22.07.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    var body: some View {
        VStack(spacing: 10){// butun yazı vb. hepsinin arasını bir tık actık
            //Profil Kartı
            HStack{
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80,height: 80)
                    .clipShape(Circle())//yuvarlak profil yapıyo resmi
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
                
                if let fullname = user.fullname{
                    Text(fullname)
                        .font(.footnote)//küçülttü
                        .fontWeight(.semibold)//yazıyı kalın yaptı
                }
                
                if let bio = user.bio{
                    Text(bio)
                        .font(.footnote)
                    
                }

                
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
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USER[0])
}
