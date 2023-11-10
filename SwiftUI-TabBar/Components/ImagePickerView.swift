//
//  ImagePickerView.swift
//  SwiftUI-TabBar
//
//  Created by Matheus Rodrigues Araujo on 27/10/23.
//

import SwiftUI
import PhotosUI

struct ImagePickerView: View {
    
    @ObservedObject var viewModel: UserViewModel
    @State private var imageData: Data = Data()
    @State private var selectedItem: [PhotosPickerItem] = []
    
    var body: some View {
        GroupBox(label:
                    PhotosPicker( selection: $selectedItem,
                                  maxSelectionCount: 1,
                                  matching: .images,
                                  photoLibrary: .shared()) {
            Text("Choose Photos from Gallery")
        }
            .onChange(of: selectedItem) { newValue in
                for item in newValue {
                    Task {
                        if let data = try? await item.loadTransferable(type: Data.self) {
                            imageData = data
                            viewModel.imageData = data
                        }
                    }
                }
            }
        ){
            if let data = imageData, let uiImage = UIImage(data: data) {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFit()
            }
        }
        .groupBoxStyle(BoxShadowStyle())
    }
}

struct ImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerView(viewModel: UserViewModel())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
