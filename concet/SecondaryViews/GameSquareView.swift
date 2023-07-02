//
//  GameSquareView.swift
//  concet
//
//  Created by Alexander Suprun on 03.06.2023.
//

import SwiftUI

struct GameSquareView : View {
    
    var body: some View {
        Image("card.xs")
            .resizable()
            .clipShape(Rectangle())
            .frame(width: 80, height: 150)
            .shadow(color: .black,
                    radius: 2)
    }
}
