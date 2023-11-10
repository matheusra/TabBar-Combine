//
//  UsernameTextField.swift
//  SwiftUI-TabBar
//
//  Created by Matheus Rodrigues Araujo on 27/10/23.
//

import SwiftUI

struct UsernameTextField: View {
    
    @ObservedObject var viewModel: UserViewModel
    
    var body: some View {
        GroupBox {
            TextField("tap here to insert your name", text: $viewModel.userName)
                .textFieldStyle(.roundedBorder)
                .padding()
        } label: {
            Text("Enter your name.")
        }
        .groupBoxStyle(BoxShadowStyle())
    }
}

struct UsernameTextField_Previews: PreviewProvider {
    static var previews: some View {
        UsernameTextField(viewModel: UserViewModel())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
