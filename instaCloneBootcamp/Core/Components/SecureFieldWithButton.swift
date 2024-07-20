//
//  SecureFieldWithButton.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 20.07.2024.
//

import SwiftUI

struct SecureFieldWithButton: View {
    
    @Binding private var text: String
    @State private var isSecured: Bool = true
    private var title : String
    
    init(text: Binding<String>, _ title: String) {
        self._text = text
        
        self.title = title
    }
    
    var body: some View {
        ZStack(alignment: .trailing){
            Group{
                if isSecured{
                    SecureField(title,text: $text)
                        .modifier(IGTextFieldModifier())
                }else{
                    TextField(title,text: $text)
                        .modifier(IGTextFieldModifier())
                }
            }
            
            Button {
                isSecured.toggle()//toggle ederek true ise false false ise true
            } label: {
                Image(systemName: self.isSecured ? "eye.slash" : "eye") //true ise bu butonu false ıse dıger butonu goster
                    .tint(.gray)
            }
            .padding(.trailing,36)
            

        }
    }
}

#Preview {
    SecureFieldWithButton(text: .constant(""), "Password")
}
