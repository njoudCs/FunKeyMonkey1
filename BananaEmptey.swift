

import SwiftUI


struct BananaEmptey: View {
  
  @State var timeRemaining = 300
  @State var isDone = false
    var body: some View {
      HStack {
          //                Search
          HStack {
              ForEach(0..<5) { index in
//                Image(isDone ? "BananaColor" : "BananaEmptey")
                  Image(
                    "BananaEmptey")
                      .resizable()
                      .scaledToFit()
                      .frame(width: 56.0, height: 74.0)
                  
               /* while timeRemaining>0 {
                
                    timeRemaining -= 60
                     
                }
                
                */
                
                
              }
            
          } .padding()
          
          .cornerRadius(8)
          
         
      }
      
    }
}

