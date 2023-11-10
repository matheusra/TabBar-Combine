//
//  ContentView.swift
//  SwiftUI-TabBar
//
//  Created by Matheus Rodrigues Araujo on 06/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = UserViewModel()
    
    var body: some View {
        TabView {
            ProfileView(viewModel: viewModel)
                .tabItem {
                    Label("User info", systemImage: "person")
                }
                .ignoresSafeArea(.all, edges: [.horizontal])
            
            UserSettingView(viewModel: viewModel)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .ignoresSafeArea(.all, edges: [.horizontal])
        }
        .padding(.vertical, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
