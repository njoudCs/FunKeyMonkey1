// Created by Lujain Mohammed


import SwiftUI
import ConfettiSwiftUI

struct greatjob: View {
  @Binding var kidsName: String

  @State var trigger: Int = 0

  var body: some View {
    ZStack{
      Rectangle()
        .foregroundColor(Color("7"))
        .opacity(88)
        .frame(width: 360 , height: 400)
        .cornerRadius(55)
      
      VStack{
        StrokeText(text: "jori\(self.kidsName)", width: 1, color: .black)
          .foregroundColor(Color("yellow"))
          .font(.system(size: 40 ,design: .rounded))
          .fontWeight(.heavy)
          .padding(.horizontal)
        
        
        StrokeText(text: "Great Job", width: 1, color: .black)
          .foregroundColor(Color("yellow"))
          .font(.system(size: 40 ,design: .rounded))
          .fontWeight(.heavy)
          .padding(.bottom)

        
                        Image("9")
                        .resizable()
                        .frame(width: 80,height: 80)

          .padding()
        
  
       
        }

      } .onAppear(perform: {
        trigger = 1
      
    })
      .onAppear(perform: {playSouund(sound: "yay", type: "mp3")})
    
    .confettiCannon(counter: $trigger,confettis: [.text("🍌"), .text("🍌"), .text("🍌"), .text("🍌")], confettiSize: 60, repetitions: 20)
    
 
  }

      
      
      
    }
    
  
  
  

  struct greatjob_Previews: PreviewProvider {
    @State static var kidsName: String = ""
    
    static var previews: some View {
      greatjob(kidsName: $kidsName)
    }
  }
  

