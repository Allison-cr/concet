//
//  ContentView.swift
//  concet
//
//  Created by Alexander Suprun on 02.06.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
  
    var body: some View {
        VStack{
            Button{
                viewModel.isGameViewPresented = true
            }label: {
                GameButton(title: "Play", backgroundColor: Color(.systemCyan))
            }
        }
        .fullScreenCover(isPresented: $viewModel.isGameViewPresented){
            GameView(viewModel: GameViewModel())
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
