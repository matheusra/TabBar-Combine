//
//  BackgroundGradient.swift
//  SwiftUI-TabBar
//
//  Created by Matheus Rodrigues Araujo on 13/10/23.
//

import SwiftUI

struct BackgroundGradient: Identifiable {
    let id: Int
    let gradient: LinearGradient
}

enum SeasonsBackground {
    
    static let allSeasons: [BackgroundGradient] = [summerGradient, winterGradient, fallGradient, springGradient]
    
    static let summerGradient = BackgroundGradient(id: 1,
                                                   gradient: LinearGradient(colors: [.limeGreen, .darkGreen],
                                                                            startPoint: .top, endPoint: .bottom))
    
    static let winterGradient = BackgroundGradient(id: 2,
                                                   gradient: LinearGradient(colors: [.paleLightBlue, .lightBlue, .paleMediumBlue, .mediumBlue, .paleDarkBlue ],
                                                                            startPoint: .bottom, endPoint: .top))
    
    static let fallGradient = BackgroundGradient(id: 3,
                                                 gradient: LinearGradient(colors: [.darkBrown, .mediumOrange],
                                                                                 startPoint: .top, endPoint: .bottom))
    
    static let springGradient = BackgroundGradient(id: 4,
                                                   gradient: LinearGradient(
                                                    colors: [.lightGreen, .paleGreen, .paleYellow, .palePink, .lightPink, .mediumPink],
                                                    startPoint: .bottom, endPoint: .top))
}
