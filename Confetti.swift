// Created by Lujain Mohammed 

import ConfettiSwiftUI
import SwiftUI

struct Confetti: View {

    @State private var counter: Int = 0
    
  var body: some View {
    Button {
      counter += 1
    }
  label:{
    Text("🍌")
      .font(.largeTitle)
    
    
    
  }.confettiCannon(counter: $counter, confettis: [.text("🍌"), .text("🍌"), .text("🍌"), .text("🍌")], confettiSize: 30)}
    
    struct Confetti_Previews: PreviewProvider {
      static var previews: some View {
        Confetti()
      }
    }
    
  
    }
