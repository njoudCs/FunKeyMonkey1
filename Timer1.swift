
import SwiftUI

struct Timer1: View {
  @Binding var timeRemaining: Int
  
let timer1 = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  
  
    var body: some View {
      
      HStack {
        Spacer()

          
          //Start timer **Auto** .. Njoud Al-Najem
          Text("\(timeRemaining)")
              .onReceive(timer1) { _ in
                  if timeRemaining > 0 {
                      timeRemaining -= 1
                  }
              }
            .padding()
            .overlay(
              Circle()
                .stroke(Color.red, lineWidth: 4)
            )


             
      }
      //End of timer .. Njoud Al-Najem
      
}}



//
//struct ee_Previews: PreviewProvider {
//    static var previews: some View {
//      ee(timeRemaining: 0)
//    }
//}
//
