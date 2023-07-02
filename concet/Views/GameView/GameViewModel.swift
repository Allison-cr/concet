//
//  GameViewModel.swift
//  concet
//
//  Created by Alexander Suprun on 03.06.2023.
//

import SwiftUI

final class GameViewModel : ObservableObject {
    let columns : [GridItem] = [GridItem(.flexible()),
                                    GridItem(.flexible()),
                                    GridItem(.flexible()),
                                    GridItem(.flexible())]
}
