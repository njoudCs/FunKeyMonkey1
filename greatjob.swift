// Created by Lujain Mohammed


import SwiftUI
import EffectsLibrary

struct greatjob: View {
  @State private var scale: CGFloat = 1.5
  var config = FireworksConfig(
    content: [
      .shape(.triangle, .yellow, 2.0),
      . shape(.square, .yellow, 2.0),
      . shape(.circle, .yellow, 2.0),
//        .emoji("",10)

  ],
    
     //      .emoji("🍌",10)]
    intensity: .high,
    lifetime: .long
  )
//  var content: [
//      .shape(.triangle, .blue, 2.0),
//      .shape(.square, .yellow, 2.0),
//      .emoji("🍌",10)]
  var body: some View {
    ZStack{
      Rectangle()
        .foregroundColor(Color("7"))
        .opacity(88)
        .frame(width: 360 , height: 400)
        .cornerRadius(55)
      
      VStack{
        StrokeText(text: "jori", width: 1, color: .black)
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
//        Confetti()
//          .scaleEffect(scale)
//          .onAppear{
////            Confetti()
//
//            let initialAnimation =
//            Animation.easeInOut(duration: 9)
//            let repeatAnimation =
//            initialAnimation
//
//
//            withAnimation{
//              scale = 1
//
//            }
//          }
//        Text ("press the monkey")
//          .foregroundColor(Color("yellow"))
          .padding()
        
  
          
          
          //                Button(action: {
          //                    print("GO")
          //
          //                }) {
          //
          //                    HStack{
          //                      StrokeText(text: "Start", width: 1, color: .black)
          //                          .foregroundColor(Color.white)
          //                                .font(.system(size: 35 ,design: .rounded))
          //                                .fontWeight(.heavy)
          //                          .padding (10)
          //
          //                          .frame (width: 200 , height: 80)
          //                          .background(Color("yellow"))
          //                          .cornerRadius (60)
          //                          .padding(.horizontal, 44)
          //                          .foregroundColor(.white)
          //                          .padding (.bottom, 24)
          //                          .shadow( radius: 4.0, x: 7.0, y: 7.0)
          //                    }
          //                    .padding()
          //                        .foregroundColor(.white)
          //                        .background(Color("yellow"))
          //                        .cornerRadius(20)
        }
      FireworksView(config: config)

      }
      
      
      
    }
    
  }
  
  
  struct greatjob_Previews: PreviewProvider {
    static var previews: some View {
      greatjob()
    }
  }
  

