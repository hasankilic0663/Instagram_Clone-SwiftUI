//
//  UploadPostView.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 22.07.2024.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false//fotograf secmeyı gostermeyı o sayfanın acıkmı kapalımı onu soylıcek
    @State private var photoItem: PhotosPickerItem? // buda bize secilen fotografı tutuyor olacak
    var body: some View {
        VStack{
            // Action Butonlarının oldugu bar- Action Toolbar
            HStack{
                Button {
                    
                } label: {
                    Text("Cancel")
                }
                Spacer()
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                Button {
                    
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }

            }
            .padding(.horizontal)//yatay padding verdik
            
            
            //Post ve Açıklaması
            HStack{
                Image("maymun-1")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                TextField("Enter your caption...",text: $caption,axis: .vertical)//yazı asagıya dogru devam eder
            }
            Spacer()
        }
        
    }
}

#Preview {
    UploadPostView()
}
