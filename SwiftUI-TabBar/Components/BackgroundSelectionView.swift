//
//  BackgroundSelectionView.swift
//  SwiftUI-TabBar
//
//  Created by Matheus Rodrigues Araujo on 27/10/23.
//

import SwiftUI

struct BackgroundSelectionView: View {
    @ObservedObject var viewModel: UserViewModel
    @State var selectedColor: Int = 3
    
    var body: some View {
        GroupBox {
            HStack(spacing: 10) {
                ForEach(SeasonsBackground.allSeasons, id: \.id) { season in
                    season.gradient
                        .onTapGesture {
                            viewModel.background = season
                            selectedColor = season.id
                        }
                        .border( selectedColor == season.id ? .red : .clear, width: 2)
                }
            }
            .frame(height: 100)
        } label: {
            Text("Background")
        }
        .groupBoxStyle(BoxShadowStyle())
        
    }
}

struct BackgroundSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundSelectionView(viewModel: UserViewModel())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
