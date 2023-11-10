//
//  ProfileView.swift
//  SwiftUI-TabBar
//
//  Created by Matheus Rodrigues Araujo on 06/10/23.
//

import SwiftUI

struct ProfileView: View {
    
    @ObservedObject var viewModel: UserViewModel
    
    var body: some View {
        ZStack {
            viewModel.background.gradient
            
            GroupBox {
                HStack {
                    Image(uiImage:viewModel.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    VStack(spacing: 15) {
                        Text("Your Name is:")
                            .font(.title2)
                            .foregroundColor(.black)
                        
                        Text("\(viewModel.userName)")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .frame(alignment: .leading)
                    }
                }
                .padding()
            }
            .padding(.horizontal)
            .backgroundStyle(Color.groupBoxGray)
            .shadow(radius: 8)
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(viewModel: UserViewModel())
    }
}
