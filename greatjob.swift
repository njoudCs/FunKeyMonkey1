// Created by Lujain Mohammed


import SwiftUI

struct greatjob: View {
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
        
        //                Image("9")
        //                .resizable()
        //                .frame(width: 80,height: 80)
        Confetti()
        Text ("let's celebrate")
          .foregroundColor(Color("yellow"))
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
        
      }
      
      
      
    }
    
  }
  
  
  struct greatjob_Previews: PreviewProvider {
    static var previews: some View {
      greatjob()
    }
  }
  

