//
//  PlayerIndicatorView.swift
//  concet
//
//  Created by Alexander Suprun on 03.06.2023.
//
import SwiftUI

struct PlayerIndicatorView : View {
    var i : Int
    @State private var emoji = ["🐶","🐱","🐭","🐹","🐻","🐼","🐸","🐽","🐔","🙈","🦁","🐮","🐯","🐨","🐻‍❄️","🦆","🪿","🦇","🦋","🐴"]
    var body : some View {
        Text(emoji[i])
            .font(.largeTitle)
    }
}
//struct PlayerIndicatorView_Previews : PreviewProvider {
  //  static var previews: some View{
    //    PlayerIndicatorView(Text(emoji[i]))
    //}
//}
