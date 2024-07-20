//
//  CompleteSignUpView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 20.07.2024.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            VStack(spacing:12){
                Spacer()
                Text("Welcome to Instagram, hasankilic0663")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color("buttonTextColor"))
                Text("You'll use this email to sign in to your account")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,24)
                
                
                NavigationLink {//button kullaırsak sayfalar arası geçiş olmaz
                   Text("Complete")
                } label: {
                    Text("Complete Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    //                        .frame(width: 342 , height: 44)
                        .foregroundStyle(Color("buttonTextColor"))
                        .padding()
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .center)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color("buttonTextColor"),lineWidth:1)//stroke ise içinin rengini siliyo dis cerceve yapıyo sadece
                )
                .padding(.horizontal,24)

                Spacer()
                
                    .toolbar{
                        ToolbarItem( placement: .topBarLeading) {
                            Image(systemName: "chevron.left")
                                .imageScale(.large)//ikonu buyulttük
                                .onTapGesture {
                                    dismiss()//butona tıklandıgında dısmıss gelıcek ve kapatılcak burası dismiss olacak yok edılcek
                                }
                        }
                    }
                    
                    
            }
        }
    }
}

#Preview {
    CompleteSignUpView()
}
