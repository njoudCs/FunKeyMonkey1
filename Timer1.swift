
import SwiftUI

struct Timer1: View {
  @Binding var timeRemaining: Int
  
let timer1 = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  
  
    var body: some View {
      
      HStack {
        Spacer()

          

          Text("\(timeRemaining)")
              .onReceive(timer1) { _ in
                  if timeRemaining > 0 {
                      timeRemaining -= 1
                  }
              } .font(.custom("Avenir Next", size: 50))
          .foregroundColor(Color("purple"))
          .fontWeight(.black)
            .padding()
        .overlay(
             Circle()
              .stroke(Color.yellow, lineWidth: 4)
           )


             
      }
    
      
      
      
}
  
  
}



//
//struct ee_Previews: PreviewProvider {
//    static var previews: some View {
//      ee(timeRemaining: 0)
//    }
//}
//
