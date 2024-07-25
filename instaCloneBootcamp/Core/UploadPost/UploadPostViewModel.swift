//
//  UploadPostViewModel.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 25.07.2024.
//

import Foundation
import PhotosUI
import SwiftUI

class UploadPostViewModel:ObservableObject{//heryerden ulasılabılmesı ıcın observabledıyoaz
    
    @Published var selectedImage:  PhotosPickerItem?{//eğer burasi değiştiyse alt taraf calısacak
        didSet { Task {  await loadImage(fromItem: selectedImage)} }//Taskten loadmımage cagır ve benım verdıgım degerlerı ver selectedımage e
        
    }
    //dışarıda kullanılacagı ıcın oublished verdık
    
    @Published var postImage: Image?
    
    func loadImage(fromItem item : PhotosPickerItem? ) async{
        guard let item = item  else{ return }
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }// kendi datasını getir basarısızsa return
        guard let uiImage = UIImage(data: data) else{ return }
        
        self.postImage = Image(uiImage:uiImage)//bunun bir görsel oldugunu bildirip uiımagına sen dısardan gelenuıımage ı ver
    }
    
}
