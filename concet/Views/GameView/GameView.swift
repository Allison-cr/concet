//
//  GameView.swift
//  concet
//
//  Created by Alexander Suprun on 03.06.2023.
//

import SwiftUI

struct GameView: View {

    @ObservedObject var viewModel : GameViewModel
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        
        
        VStack{
            Text("asdf")
            Button{
                mode.wrappedValue.dismiss()
            } label: {
                GameButton(title: "Quit", backgroundColor: Color(.systemRed))
            }
            
            Text("Loading view")
            Spacer()
            VStack{
                LazyVGrid(columns: viewModel.columns, spacing: 5){
                    ForEach(0..<16) {
                        i in
                        ZStack{
                          
                           GameSquareView()
                            PlayerIndicatorView(i: i)
                        }
                        .onTapGesture {
                            print("tap on ",i)
                        }
                    }
                    
                }
                
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(viewModel: GameViewModel())
    }
}
