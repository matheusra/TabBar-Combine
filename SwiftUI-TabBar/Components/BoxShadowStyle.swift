//
//  BoxShadowStyle.swift
//  SwiftUI-TabBar
//
//  Created by Matheus Rodrigues Araujo on 27/10/23.
//

import SwiftUI

/// Custom GroupBox style with default configurations for font, color, padding and corner for the component.
struct BoxShadowStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.label
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
            configuration.content
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity
            )
        .padding()
        .background()
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 3)
    }
    
}
