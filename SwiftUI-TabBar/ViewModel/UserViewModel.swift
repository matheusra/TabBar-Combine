//
//  UserViewModel.swift
//  SwiftUI-TabBar
//
//  Created by Matheus Rodrigues Araujo on 06/10/23.
//

import SwiftUI

final class UserViewModel: ObservableObject {
    @Published var userName: String = ""
    @Published var background: BackgroundGradient = SeasonsBackground.summerGradient
    @Published var imageData: Data = Data()
    
    var image: UIImage {
        if let uiImage = UIImage(data: imageData) {
            return uiImage
        }
        return UIImage(systemName: "person.fill")!
    }
}
