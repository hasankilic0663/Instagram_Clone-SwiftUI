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
    //@State private var photoItem: PhotosPickerItem? // buda bize secilen fotografı tutuyor olacak
    @StateObject  var viewModel = UploadPostViewModel()
    
    @Binding var tabIndex : Int//bunun sayesınde tekraradan yonlendırme ıslemı yapıyo
    var body: some View {
        VStack{
            // Action Butonlarının oldugu bar- Action Toolbar
            HStack{
                Button {
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0
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
                if let image = viewModel.postImage{
//                    Image("maymun-1") image oldugunu bildirdik buna gerek yok
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                        .clipped()
                        
                }
                
                TextField("Enter your caption...",text: $caption,axis: .vertical)//yazı asagıya dogru devam eder
            }
            Spacer()
        }/*is presented ise false true deger */
        .onAppear(){
            imagePickerPresented.toggle()//toggle etmek değiştirmek yani
        }//içindekini tetikliyo
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)//birşey secildigi zaman selected ımage a yaz //////selection ise hagni fotograf secıldıyse onu tutucak seyi istiyor
    }
}

#Preview {
    UploadPostView(tabIndex: .constant(0))
}
