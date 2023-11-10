//
//  UserSettingView.swift
//  SwiftUI-TabBar
//
//  Created by Matheus Rodrigues Araujo on 06/10/23.
//

import SwiftUI

struct UserSettingView: View {
    
    @ObservedObject var viewModel: UserViewModel
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 20) {
                
                Text("Settings")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.bottom, 30)
                                
                BackgroundSelectionView(viewModel: viewModel)
                
                ImagePickerView(viewModel: viewModel)
                
                UsernameTextField(viewModel: viewModel)
            }
            .padding()
        }
        .scrollIndicators(.hidden)
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserSettingView(viewModel: UserViewModel())
    }
}
