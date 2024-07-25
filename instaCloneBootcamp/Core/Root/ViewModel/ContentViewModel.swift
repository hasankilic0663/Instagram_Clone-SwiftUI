//
//  ContentViewModel.swift
//  instaCloneBootcamp
//
//  Created by Hasan on 25.07.2024.
//

import Foundation
import FirebaseAuth
import Combine // Bunu bilmiyoruml


class ContentViewModel : ObservableObject{ // TAKİP EDİLEBİLİR BİR OBJE
    
    private let service = AuthService.shared
    
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession : FirebaseAuth.User?
    
    init(){//her nesne olusturdugumuzda bize bu asagıdakı fonksıyonu çağırsın ve uygulasın
        setupSubscibers()
    }
    
    func setupSubscibers(){ //sink ->takip etmek
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession //getirdiği parametre burdaki parametreyi ata
        }
        .store(in: &cancellables)
    }
    
}
