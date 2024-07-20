//
//  CreatePasswordView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 20.07.2024.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password = ""
    @Environment(\.dismiss) var dismiss // buradakı gerı butonunu aktıf etme .    Dİsmis fonksıyonunu eklemeden calsımaz
    var body: some View {
        NavigationStack{
            VStack(spacing:12){
                Spacer()
                Text("Add your Password")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color("buttonTextColor"))
                Text("You'll use this email to sign in to your account")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,24)
                SecureField("Password", text: $password)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .modifier(IGTextFieldModifier())
                
                NavigationLink {//button kullaırsak sayfalar arası geçiş olmaz
                    //PASSWORD SAYFASINA YÖNLENDİR
                    CompleteSignUpView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Next")
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
    CreatePasswordView()
}
