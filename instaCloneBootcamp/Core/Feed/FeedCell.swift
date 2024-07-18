//
//  FeedCell.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 16.07.2024.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            //profil fotografı ve kullanıcı adı
            HStack{
                Image("hasan")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())//yuvarlak yapıyogörseli
                
                Text("hasankilic0663")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("buttonTextColor"))
                Spacer()
            }
            .padding(.leading, 8)//bastan yanı sag tarafta nsadece bosluk verdik
            
            
            //post görseli
            
            Image("hasan")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())//burdada resmı sabıtledık
                
            
            
            //action butonlarrı yanı begenı butonu yorum butonu gııb
            HStack{
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                Button {
                    
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
                

                
            }
            .padding(.leading,8)
            .padding(.top,4)
            .foregroundStyle(Color("buttonTextColor"))
            //Beğeni sayısı ve like
            Text("300 Beğeni")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
            //acıklama kısmı
            HStack{
                Text("hasankilic0663")
                    .fontWeight(.semibold) + // burada + verirsek bir olur text
                Text("Merhaba , Ben Yazılımcıyım ddddddd")
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/ , alignment: .leading)
            .font(.footnote)
            .padding(.leading,10)
            .padding(.top,1)
            
            Text("10h ago")
                .font(.footnote)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
                .foregroundStyle(.gray)
            
            
        }
    }
}

#Preview {
    FeedCell()
}
