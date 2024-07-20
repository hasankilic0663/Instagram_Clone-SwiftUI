//
//  LoginView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 19.07.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
        
    
    var body: some View {
        
        NavigationStack{
             
                VStack{
                    Spacer()
                    Image("instagram")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220 , height: 100)
                    
                    TextField("Enter your email", text:$email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)//büyük harf kullanımıını devre dısı bırakır
//                        .font(.subheadline)
//                        .padding(12)
//                        .background(Color(.systemGray6))
//                        .cornerRadius(10)
//                        .padding(.horizontal,24)
                        .modifier(IGTextFieldModifier())//bunu kullanarak yukardakılerı tek bır satırla cagırıyoruz
                    
                    
                    SecureField("Enter your password", text:$password)
                        .modifier(IGTextFieldModifier())
                    
                    Button {
                        print("LOGIN BUTTON")
                    } label: {
                        Text("Login")
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
                    
                    Button {
                        print("FORGET PASSWORD")
                    } label: {
                        Text("Forget Password?")
                            .font(.footnote)//yazıyı kucultuyo
                            .fontWeight(.semibold)
                            .padding(.top)
                            .padding(.trailing,28)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .trailing)
                    
                    HStack{
                        Rectangle()
                            .frame(height: 0.5)
                        Text("OR")
                        Rectangle()
                            .frame(height: 0.5)
                    }
                    .padding(.horizontal,24)
                    .foregroundColor(.gray)
                    HStack{
                        Image("facebook")
                            .resizable()
                            .frame(width: 20,height: 20)
                        Text("Continue with Facebook")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.systemBlue))
                    }
                    .padding(.top,8)
                    
                    
                    Spacer()
                       
                    
                    Divider()
                    NavigationLink{
                        AddEmailView()
                            .navigationBarBackButtonHidden(true)//bunun sayesınde gıttıgınde otomatık back butonu kapanıyo kendı yaptıgımız buton gozukuyo add emaıldekı buton
                        
                    } label:{
                        HStack{
                            Text("Don't have an account?")
                            
                            Text("Sign up")
                                .fontWeight(.semibold)
                        }
                    }
                    .padding(.vertical,16)
                    
                    
                }
            }
        
    }
}

#Preview {
    LoginView()
}
